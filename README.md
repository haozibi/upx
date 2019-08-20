# upx

compress your binary file

## Usage

The `-k` options is for keeping a backup from the original binary.

```shell
$ docker run --rm -v $PWD:/data haozibi/upx -k --best --ultra-brute main
                       Ultimate Packer for eXecutables
                          Copyright (C) 1996 - 2018
UPX 3.95        Markus Oberhumer, Laszlo Molnar & John Reiser   Aug 26th 2018

        File size         Ratio      Format      Name
   --------------------   ------   -----------   -----------
   2885424 ->   1286160   44.57%   macho/amd64   main

Packed 1 file.
```