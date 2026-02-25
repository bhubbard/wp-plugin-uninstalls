-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fish-and-ships-woocommerce', 'fish-and-ships-woocommerce-user-default', 'fish-and-ships-woocommerce-news', 'woocommerce_currency', 'wc-fns-translatable', 'wc_fns_logs_index', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('group_title', 'field_label', 'fish-and-ships-woocommerce');
DELETE FROM wp_usermeta WHERE meta_key IN ('group_title', 'field_label', 'fish-and-ships-woocommerce');
DELETE FROM wp_termmeta WHERE meta_key IN ('group_title', 'field_label', 'fish-and-ships-woocommerce');
DELETE FROM wp_commentmeta WHERE meta_key IN ('group_title', 'field_label', 'fish-and-ships-woocommerce');

