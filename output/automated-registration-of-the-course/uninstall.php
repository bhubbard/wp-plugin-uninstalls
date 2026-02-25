<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('dot_pages_enable');
delete_site_option('dot_pages_enable');
delete_option('dot_pages_slug');
delete_site_option('dot_pages_slug');
delete_option('dot_pages_mode');
delete_site_option('dot_pages_mode');
delete_option('option_etc');
delete_site_option('option_etc');

