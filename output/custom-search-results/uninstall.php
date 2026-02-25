<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wesp_general_setting_active');
delete_site_option('wesp_general_setting_active');
delete_option('wesp_db_version');
delete_site_option('wesp_db_version');
delete_option('wesp_searchtype_post');
delete_site_option('wesp_searchtype_post');
delete_option('wesp_searchtype_page');
delete_site_option('wesp_searchtype_page');

