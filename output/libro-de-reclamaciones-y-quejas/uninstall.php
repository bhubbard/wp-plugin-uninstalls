<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('libro_setting_page');
delete_site_option('libro_setting_page');
delete_option('libro_setting_url');
delete_site_option('libro_setting_url');
delete_option('rt_libro_db_version');
delete_site_option('rt_libro_db_version');

