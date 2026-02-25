<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('surbma_premium_wp_google_analytics_fields');
delete_site_option('surbma_premium_wp_google_analytics_fields');
delete_option('surbma_premium_wp_social_fields');
delete_site_option('surbma_premium_wp_social_fields');
delete_option('surbma_premium_wp_google_tag_manager_fields');
delete_site_option('surbma_premium_wp_google_tag_manager_fields');
delete_option('surbma_premium_wp_extra_fields');
delete_site_option('surbma_premium_wp_extra_fields');

