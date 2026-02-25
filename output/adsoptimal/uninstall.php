<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adsoptimal_access_token');
delete_site_option('adsoptimal_access_token');
delete_option('adsoptimal_email');
delete_site_option('adsoptimal_email');
delete_option('adsoptimal_publisher_id');
delete_site_option('adsoptimal_publisher_id');
delete_option('adsoptimal_settings');
delete_site_option('adsoptimal_settings');
delete_option('adsoptimal_enable_desktop_ad');
delete_site_option('adsoptimal_enable_desktop_ad');
delete_option('adsoptimal_top_ad_alignment');
delete_site_option('adsoptimal_top_ad_alignment');
delete_option('adsoptimal_content_ad_alignment');
delete_site_option('adsoptimal_content_ad_alignment');
delete_option('adsoptimal_footer_ad_alignment');
delete_site_option('adsoptimal_footer_ad_alignment');
delete_option('adsoptimal_enable_post_ad');
delete_site_option('adsoptimal_enable_post_ad');
delete_option('adsoptimal_enable_page_ad');
delete_site_option('adsoptimal_enable_page_ad');
delete_option('adsoptimal_top_ad_type');
delete_site_option('adsoptimal_top_ad_type');
delete_option('adsoptimal_content_ad_type');
delete_site_option('adsoptimal_content_ad_type');
delete_option('adsoptimal_footer_ad_type');
delete_site_option('adsoptimal_footer_ad_type');
delete_option('adsoptimal_content_ad_every');
delete_site_option('adsoptimal_content_ad_every');

