-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pretix_widget_cache_time_max', 'pretix_widget_shop_url', 'pretix_widget_version', 'pretix_widget_list_type', 'pretix_widget_disable_voucher', 'pretix_widget_disable_filter', 'pretix_widget_language', 'pretix_widget_button_text', 'pretix_widget_custom_css', 'pretix_widget_debug_skip_ssl_check', 'pretix_widget_custom_css');

