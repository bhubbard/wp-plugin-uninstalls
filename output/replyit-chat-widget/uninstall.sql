-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('replyit_widget_id', 'replyit_api_secret', 'replyit_api_url', 'replyit_enabled', 'replyit_woocommerce_enabled', 'replyit_blog_search_enabled', 'replyit_blog_content_enabled', 'replyit_order_tracking_enabled', 'replyit_cart_abandon_time', 'replyit_product_page_delay', 'replyit_checkout_help_enabled', 'replyit_product_search_enabled', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'replyit_domain_registered', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

