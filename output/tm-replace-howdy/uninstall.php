<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tm_replace_howdy_ver');
delete_site_option('tm_replace_howdy_ver');
delete_option('tm_replace_howdy_all_languages');
delete_site_option('tm_replace_howdy_all_languages');
delete_option('tm_replace_howdy_mode');
delete_site_option('tm_replace_howdy_mode');
delete_option('tm_replace_howdy_values');
delete_site_option('tm_replace_howdy_values');
delete_option('tm_replace_howdy_save');
delete_site_option('tm_replace_howdy_save');
delete_option('techm_replace_howdy');
delete_site_option('techm_replace_howdy');
delete_option('techm_replace_howdy_values');
delete_site_option('techm_replace_howdy_values');

