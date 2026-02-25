-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount', 'woocommerce_currency_pos', 'f12_accessories_overview_map', 'f12_accessories_dashboard_stats');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('f12-woo-accessoire_order', 'f12-woo-required_accessoire_ids', 'f12-woo-accessoire_ids', 'f12-woo-accessoire_recommended');
DELETE FROM wp_usermeta WHERE meta_key IN ('f12-woo-accessoire_order', 'f12-woo-required_accessoire_ids', 'f12-woo-accessoire_ids', 'f12-woo-accessoire_recommended');
DELETE FROM wp_termmeta WHERE meta_key IN ('f12-woo-accessoire_order', 'f12-woo-required_accessoire_ids', 'f12-woo-accessoire_ids', 'f12-woo-accessoire_recommended');
DELETE FROM wp_commentmeta WHERE meta_key IN ('f12-woo-accessoire_order', 'f12-woo-required_accessoire_ids', 'f12-woo-accessoire_ids', 'f12-woo-accessoire_recommended');

