<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('citw_url_schema');
delete_site_option('citw_url_schema');
delete_option('citw_enable_img_alt');
delete_site_option('citw_enable_img_alt');
delete_option('icl_sitepress_settings');
delete_site_option('icl_sitepress_settings');

