<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdb_display_type');
delete_site_option('mdb_display_type');
delete_option('mdb_facebookappid');
delete_site_option('mdb_facebookappid');
delete_option('mdb_link');
delete_site_option('mdb_link');
delete_option('mdb_redirect_url');
delete_site_option('mdb_redirect_url');
delete_option('mdb_recipients');
delete_site_option('mdb_recipients');

