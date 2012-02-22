#!/usr/bin/vala --pkg augeas --vapidir=../src
/*
 * valac --debug --verbose --save-temps --pkg augeas --vapidir ../src augeas.vala
 */

using Augeas;

void main(string[] args)
{
  var aug = new Augeas.Tree ();

  aug.print (stdout, "/files/etc/passwd");
}
