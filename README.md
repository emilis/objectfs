# ObjectFS

Easy data plumbing.

## Usage

### Installation

If you downloaded the packaged version (<em>objectfs-*.tar.gz</em>) you don't need to do anything.

If you got the code from git repository run this once:

```bash
$ make
```

### Example

Write some records to a new CSV file, get the records back:

```bash
$ cd objectfs
$ bin/ofs write test.csv '{"id":123,"name":"Chuck Norris"}'
$ bin/ofs write test.csv '{"id":456,"name":"Chuck testa"}'
$ cat test.csv
"id","name"
123,"Chuck Norris"
456,"Chuck Testa"
$ bin/ofs list test.csv
[{"id":123,"name":"Chuck Norris"},{"id":456,"name":"Chuck Testa"}]
$ bin/ofs iterate test.csv
{"id":123,"name":"Chuck Norris"}
{"id":456,"name":"Chuck Testa"}
```
### Command reference

This package provides two command-line scripts: `ofs` and `ofs-pkg`.

#### ofs

Reads and manipulates data.

##### Options

<table><tbody>
<tr><td><b>-h</b></td><td>Prints help message.</td></tr>
<tr><td><b>-i</b></td><td>Starts JavaScript shell.</td></tr>
<tr><td><b>-v</b></td><td>Prints version number and exits.</td></tr>
</tbody></table>

##### Commands

<table><tbody>
<tr><td><b>read STORAGE ID</b></td><td>Reads one record from storage.</td></tr>
<tr><td><b>iterate STORAGE</b></td><td>Prints all records in JSON format. One record per line.</td></tr>
<tr><td><b>list STORAGE</b></td><td>Prints all records as a single JSON array.</td></tr>
<tr><td><b>write STORAGE JSON<br>write FS ID JSON</b></td><td>Writes one JSON record to storage.<br>Provide a record ID if you want to update an existing record.</td></tr>
<tr><td><b>remove STORAGE ID</b></td><td>Removes one JSON record from storage.</td></tr>
<tr><td><b>mirror STORAGE1 STORAGE2</b></td><td>Copy all records from one storage to another.</td></tr>
</tbody></table>

#### ofs-pkg

Manages ObjectFS packages.

##### Options

<table><tbody>
<tr><td><b>-h</b></td><td>Prints help message.</td></tr>
<tr><td><b>-i</b></td><td>Starts JavaScript shell.</td></tr>
<tr><td><b>-v</b></td><td>Prints version number and exits.</td></tr>
</tbody></table>

##### Commands

<table><tbody>
<tr><td><b>search<br>search PATTERN</b></td><td>Shows a package list.<br>Filters the package list.</td></tr>
<tr><td><b>show PACKAGE</b></td><td>Shows package information in JSON format.</td></tr>
<tr><td><b>install PACKAGE</b></td><td>Installs package.</td></tr>
<tr><td><b>remove PACKAGE</b></td><td>Removes a package.</td></tr>
<tr><td><b>update<br>update PACKAGE</b></td><td>Downloads package updates,<br>or a specific package update.</td></tr>
<tr><td><b>upgrade<br>upgrade PACKAGE</b></td><td>Downloads package updates and upgrades packages,<br>or a specific package.</td></tr>
</tbody></table>


### Requirements

- bash
- make
- git
- java

## About

ObjectFS is an open platform for extracting, translating and moving data from all kinds of databases, file formats APIs, etc..

### Author contact

Emilis Dambauskas <emilis.d@gmail.com>, <http://emilis.github.com/>
