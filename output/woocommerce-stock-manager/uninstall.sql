-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_stock_old_styles', 'woocommerce_notify_low_stock_amount', 'wsm_dismiss_subscribe_admin_notice', 'sa_wsm_offer_bfcm_2025', 'sa_wsm_dismiss_in_app_pricing_notice', 'wsm_display_option', 'woocommerce_stock_limit');

