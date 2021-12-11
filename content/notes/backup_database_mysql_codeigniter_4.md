---
title: "Backup Database MySQL Codeigniter 4"
date: 2021-12-11T21:06:29+07:00
# weight: 1
# aliases: ["/first"]
tags: ["notes", "php", "codeigniter"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Script for backup database using Codeigniter 4"
# canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
editPost:
    URL: "https://github.com/<path_to_repo>/content"
    Text: "Suggest Changes" # edit text
    appendFilePath: true # to append file path to Edit link
---
Write this code into controller:
```php
/**
     * Backup database to .sql file
     * 
     * @return file
     */
    public function backup()
    {
        try {
            // load helper
            helper('filesystem');
            // db connection config
            $config = [
                'DSN'      => '',
                'hostname' => env('database.default.hostname', 'localhost'),
                'username' => env('database.default.username', 'root'),
                'password' => env('database.default.password', ''),
                'database' => env('database.default.database', 'db_keuangan_test'),
                'DBDriver' => 'MySQLi',
                'DBPrefix' => '',
                'pConnect' => false,
                'DBDebug'  => (ENVIRONMENT !== 'production'),
                'charset'  => 'utf8',
                'DBCollat' => 'utf8_general_ci',
                'swapPre'  => '',
                'encrypt'  => false,
                'compress' => false,
                'strictOn' => false,
                'failover' => [],
                'port'     => 3306,
            ];
            // connect to db with each config
            $db = db_connect($config);
            $builder = $db->query('SHOW TABLES');
            $return = '';
            // get table listing
            $tables = $builder->getResultArray();
            // dd($tables, $config);
            // iterate tables
            foreach ($tables as $table) {
                // get field count from current table
                $result = $db->query('SELECT * FROM ' . $table['Tables_in_' . $config['database']]);
                // $num_field = $result->getFieldCount();
                // create line "DROP TABLE <current_table_name>"
                $return .= "DROP TABLE IF EXISTS " . $table['Tables_in_' . $config['database']] . ";";
                // get create query from current table
                $row2 = $db->query('SHOW CREATE TABLE ' . $table['Tables_in_' . $config['database']])->getResultArray();
                // add create query to return
                $return .= "\n\n" . $row2[0]['Create Table'] . ";\n\n";
                // get result fromm current table
                $row = $result->getResultArray();
                if (sizeof($row) > 0) {
                    $return .= "INSERT INTO " . $table['Tables_in_' . $config['database']] . " VALUES(";
                    // dd($row[0]);
                    for ($j = 0; $j < sizeof($row); $j++) {
                        $idx = 0;
                        foreach ($row[$j] as $r) {
                            $r = addslashes($r);
                            $r = mb_ereg_replace("\n", "\\n", $r);
                            if (isset($r)) {
                                $return .= '"' . $r . '"';
                            } else {
                                $return .= '""';
                            }
                            // add separator
                            if ($idx < sizeof($row[$j]) - 1) {
                                $return .= ',';
                            }
                            $idx++;
                        }
                        // add separator
                        if ($j < sizeof($row) - 1) {
                            $return .= '), (';
                        }
                    }
                    // add separator
                    $return .= ");\n";
                    $return .= "\n\n\n";
                }
            }
            // file name
            $filename = date('d-m-Y-H-i-s') . "-db_keuangan.sql";
            // write file
            if (!write_file(ROOTPATH . "/public/backupdb/" . $filename, $return)) {
                return redirect()->to(base_url() . '/backup-restore')->with('error', 'Cannot write file!');
            } else {
                return redirect()->to(base_url() . '/backup-restore')->with('success', 'Backup database berhasil! <a class="float-right" href="'.base_url().'/public/backupdb/'.$filename.'"><i class="fas fa-download"></i> Download</a>');
            }
        } catch (\Throwable $th) {
            return redirect()->to(base_url() . '/backup-restore')->with('error', $th->getMessage());
        }
    }
```

don't forget to load `filesystem` helper.
