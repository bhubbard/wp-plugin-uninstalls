<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('replyit_widget_id');
delete_site_option('replyit_widget_id');
delete_option('replyit_api_secret');
delete_site_option('replyit_api_secret');
delete_option('replyit_api_url');
delete_site_option('replyit_api_url');
delete_option('replyit_enabled');
delete_site_option('replyit_enabled');
delete_option('replyit_woocommerce_enabled');
delete_site_option('replyit_woocommerce_enabled');
delete_option('replyit_blog_search_enabled');
delete_site_option('replyit_blog_search_enabled');
delete_option('replyit_blog_content_enabled');
delete_site_option('replyit_blog_content_enabled');
delete_option('replyit_order_tracking_enabled');
delete_site_option('replyit_order_tracking_enabled');
delete_option('replyit_cart_abandon_time');
delete_site_option('replyit_cart_abandon_time');
delete_option('replyit_product_page_delay');
delete_site_option('replyit_product_page_delay');
delete_option('replyit_checkout_help_enabled');
delete_site_option('replyit_checkout_help_enabled');
delete_option('replyit_product_search_enabled');
delete_site_option('replyit_product_search_enabled');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('replyit_domain_registered');
delete_site_transient('replyit_domain_registered');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

