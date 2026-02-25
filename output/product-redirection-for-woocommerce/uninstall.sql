-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trash_warning_prfw', 'trash_disable_prfw', 'stock_notice_prfw', 'stock_notice_toggle_prfw', 'stock_recommendations_toggle_prfw', 'prfw_notice_dismissed_polyplugins', 'prfw_version_polyplugins', 'product_redirection_for_woocommerce_settings_polyplugins');

