<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sntc_banner_enabled');
delete_site_option('sntc_banner_enabled');
delete_option('sntc_banner_style');
delete_site_option('sntc_banner_style');
delete_option('sntc_banner_message');
delete_site_option('sntc_banner_message');
delete_option('sntc_bg_color');
delete_site_option('sntc_bg_color');
delete_option('sntc_text_color');
delete_site_option('sntc_text_color');
delete_option('sntc_link_color');
delete_site_option('sntc_link_color');
delete_option('sntc_accept_bg');
delete_site_option('sntc_accept_bg');
delete_option('sntc_accept_text');
delete_site_option('sntc_accept_text');
delete_option('sntc_decline_bg');
delete_site_option('sntc_decline_bg');
delete_option('sntc_decline_text');
delete_site_option('sntc_decline_text');
delete_option('sntc_privacy_url');
delete_site_option('sntc_privacy_url');
delete_option('sntc_install_time');
delete_site_option('sntc_install_time');
delete_option('sntc_review_dismissed');
delete_site_option('sntc_review_dismissed');
delete_option('sntc_review_temp_dismiss');
delete_site_option('sntc_review_temp_dismiss');

