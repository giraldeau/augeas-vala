#!/usr/bin/vala --pkg augeas --vapidir=../vapis
/*
 * valac --debug --verbose --save-temps --pkg augeas --vapidir . augeas.vala
 */

using Augeas;

void main(string[] args)
{
  var aug = new Augeas.Tree ();

  aug.print (stdout, "/files/etc/passwd");
}
