-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ga_id', 'woocommerce_ga_support_display_advertising', 'woocommerce_ga_ecommerce_tracking_enabled', 'woocommerce_google_analytics_pro_notice_shown');

