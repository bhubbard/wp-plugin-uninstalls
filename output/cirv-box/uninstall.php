<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cirvbo_enable_article_schema');
delete_site_option('cirvbo_enable_article_schema');
delete_option('cirvbo_enable_organization_schema');
delete_site_option('cirvbo_enable_organization_schema');
delete_option('cirvbo_enable_product_schema');
delete_site_option('cirvbo_enable_product_schema');
delete_option('cirvbo_enable_faq_schema');
delete_site_option('cirvbo_enable_faq_schema');
delete_option('cirvbo_enable_breadcrumb_schema');
delete_site_option('cirvbo_enable_breadcrumb_schema');
delete_option('cirvbo_enable_howto_schema');
delete_site_option('cirvbo_enable_howto_schema');
delete_option('cirvbo_organization_name');
delete_site_option('cirvbo_organization_name');
delete_option('cirvbo_debug_mode');
delete_site_option('cirvbo_debug_mode');
delete_option('cirvbo_debug_log');
delete_site_option('cirvbo_debug_log');
delete_option('cirvbo_activation_time');
delete_site_option('cirvbo_activation_time');
delete_option('cirvbo_rating_notice_dismissed');
delete_site_option('cirvbo_rating_notice_dismissed');
delete_option('cirvbo_migration_complete');
delete_site_option('cirvbo_migration_complete');
delete_option('cirvbo_legacy_cleanup_complete');
delete_site_option('cirvbo_legacy_cleanup_complete');
delete_option('ssb_enable_article_schema');
delete_site_option('ssb_enable_article_schema');
delete_option('ssb_enable_organization_schema');
delete_site_option('ssb_enable_organization_schema');
delete_option('ssb_enable_product_schema');
delete_site_option('ssb_enable_product_schema');
delete_option('ssb_enable_faq_schema');
delete_site_option('ssb_enable_faq_schema');
delete_option('ssb_enable_breadcrumb_schema');
delete_site_option('ssb_enable_breadcrumb_schema');
delete_option('ssb_enable_howto_schema');
delete_site_option('ssb_enable_howto_schema');
delete_option('ssb_organization_name');
delete_site_option('ssb_organization_name');
delete_option('ssb_debug_mode');
delete_site_option('ssb_debug_mode');
delete_option('ssb_debug_log');
delete_site_option('ssb_debug_log');
delete_option('ssb_activation_time');
delete_site_option('ssb_activation_time');
delete_option('ssb_rating_notice_dismissed');
delete_site_option('ssb_rating_notice_dismissed');
delete_option('cirvbo_enable_review_schema');
delete_site_option('cirvbo_enable_review_schema');
delete_option('cirvbo_enable_recipe_schema');
delete_site_option('cirvbo_enable_recipe_schema');
delete_option('cirvbo_enable_event_schema');
delete_site_option('cirvbo_enable_event_schema');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cirvbo_organization_schema_%', '_site_transient_cirvbo_organization_schema_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cirvbo_cleanup_legacy_options');

