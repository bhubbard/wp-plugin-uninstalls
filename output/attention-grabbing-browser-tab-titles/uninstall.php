<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('attention_browser_enable_feature');
delete_site_option('attention_browser_enable_feature');
delete_option('attention_browser_title_texts');
delete_site_option('attention_browser_title_texts');
delete_option('attention_browser_title_time');
delete_site_option('attention_browser_title_time');
delete_option('attention_browser_enable_homepage');
delete_site_option('attention_browser_enable_homepage');

