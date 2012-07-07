#!/usr/bin/vala --pkg augeas --vapidir=../src
/*
 * valac --debug --verbose --save-temps --pkg augeas --vapidir ../src augeas.vala
 */
using Augeas;

public class AugValaTest: Object {
	public static void test_match () {
		var aug = new Augeas.Tree ();
		var res = aug.match ("/files/etc/passwd");
		assert (res != null);
		assert (res.length == 1);
	}
	public static void main (string[] args) {
		Test.init (ref args);
		Test.add_func ("/aug/vala/match", test_match);
		Test.run ();
	}
}
