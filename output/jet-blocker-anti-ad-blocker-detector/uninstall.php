<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetblocker_switch');
delete_site_option('jetblocker_switch');
delete_option('jetblocker_fullscreen');
delete_site_option('jetblocker_fullscreen');
delete_option('wpcd_skin');
delete_site_option('wpcd_skin');
delete_option('jetblocker_heading');
delete_site_option('jetblocker_heading');
delete_option('jetblocker_subheading');
delete_site_option('jetblocker_subheading');
delete_option('jetblocker_text');
delete_site_option('jetblocker_text');
delete_option('whitelist_btn_text');
delete_site_option('whitelist_btn_text');
delete_option('jetblocker_donate_btn_text');
delete_site_option('jetblocker_donate_btn_text');
delete_option('jetblocker_donate_link');
delete_site_option('jetblocker_donate_link');
delete_option('jetblocker_anti_ad_blocker');
delete_site_option('jetblocker_anti_ad_blocker');
delete_option('jetblocker_reviews');
delete_site_option('jetblocker_reviews');

