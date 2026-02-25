-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'active-digital-barcodes-version', 'alg_wc_ean_title', 'wpm_pgw_label', 'hwp_gtin_text', 'woocommerce_currency_pos', 'woocommerce_currency', 'wpbcu_old_post', 'wpbcu_validation_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%2.0.5';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'date_expires', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'date_expires', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'date_expires', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'date_expires', '_product_attributes');

