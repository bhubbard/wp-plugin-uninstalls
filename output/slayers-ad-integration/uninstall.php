<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slayer_ad_ads');
delete_site_option('slayer_ad_ads');
delete_option('slayer_ad_css');
delete_site_option('slayer_ad_css');
delete_option('slayer_ad_html_before');
delete_site_option('slayer_ad_html_before');
delete_option('slayer_ad_html_after');
delete_site_option('slayer_ad_html_after');
delete_option('slayer_ad_max_count_per_page');
delete_site_option('slayer_ad_max_count_per_page');

