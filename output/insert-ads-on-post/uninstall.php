<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('insert_ads_on_post_single');
delete_site_option('insert_ads_on_post_single');
delete_option('insert_ads_on_post_showa');
delete_site_option('insert_ads_on_post_showa');
delete_option('insert_ads_on_post_above');
delete_site_option('insert_ads_on_post_above');
delete_option('insert_ads_on_post_showb');
delete_site_option('insert_ads_on_post_showb');
delete_option('insert_ads_on_post_below');
delete_site_option('insert_ads_on_post_below');
delete_option('insert_ads_on_post_page');
delete_site_option('insert_ads_on_post_page');
delete_option('insertadsonpost_data');
delete_site_option('insertadsonpost_data');

