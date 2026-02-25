<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rm_art_kuerzung');
delete_site_option('rm_art_kuerzung');
delete_option('rm_anzahl_kuerzung');
delete_site_option('rm_anzahl_kuerzung');
delete_option('rm_linkname');
delete_site_option('rm_linkname');
delete_option('rm_linkbezeichnung');
delete_site_option('rm_linkbezeichnung');

