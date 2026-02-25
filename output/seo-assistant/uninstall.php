<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seo_assistant_google_webmaster');
delete_site_option('seo_assistant_google_webmaster');
delete_option('seo_assistant_google_analytical');
delete_site_option('seo_assistant_google_analytical');
delete_option('seo_assistant_google_tag_manager');
delete_site_option('seo_assistant_google_tag_manager');
delete_option('seo_assistant_meta_pixel');
delete_site_option('seo_assistant_meta_pixel');
delete_option('seo_assistant_fb_domain_verification');
delete_site_option('seo_assistant_fb_domain_verification');

