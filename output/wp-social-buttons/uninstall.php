<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsb_active');
delete_site_option('wpsb_active');
delete_option('wpsb_position');
delete_site_option('wpsb_position');
delete_option('wpsb_hide_frame');
delete_site_option('wpsb_hide_frame');
delete_option('wpsb_top_margin');
delete_site_option('wpsb_top_margin');
delete_option('wpsb_delayTimeBtn');
delete_site_option('wpsb_delayTimeBtn');
delete_option('wpsb_page_hide_home');
delete_site_option('wpsb_page_hide_home');
delete_option('wpsb_page_hide_post');
delete_site_option('wpsb_page_hide_post');
delete_option('wpsb_page_hide_page');
delete_site_option('wpsb_page_hide_page');
delete_option('wpsb_fpublishBtn');
delete_site_option('wpsb_fpublishBtn');
delete_option('wpsb_ppublishBtn');
delete_site_option('wpsb_ppublishBtn');
delete_option('wpsb_lpublishBtn');
delete_site_option('wpsb_lpublishBtn');
delete_option('wpsb_twitterpublishBtn');
delete_site_option('wpsb_twitterpublishBtn');
delete_option('wpsb_tumpublishBtn');
delete_site_option('wpsb_tumpublishBtn');
delete_option('wpsb_fb_url');
delete_site_option('wpsb_fb_url');
delete_option('wpsb_tw_url');
delete_site_option('wpsb_tw_url');
delete_option('wpsb_li_url');
delete_site_option('wpsb_li_url');
delete_option('wpsb_pin_url');
delete_site_option('wpsb_pin_url');
delete_option('wpsb_deactive_for_mob');
delete_site_option('wpsb_deactive_for_mob');
delete_option('wpsb_disable_for_home');
delete_site_option('wpsb_disable_for_home');

