-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_woo_cardknox_split_payment_settings', 'woocommerce_cardknox_settings', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wksp_snap_eligible', 'wksp_ebt_cash_eligible');
DELETE FROM wp_usermeta WHERE meta_key IN ('wksp_snap_eligible', 'wksp_ebt_cash_eligible');
DELETE FROM wp_termmeta WHERE meta_key IN ('wksp_snap_eligible', 'wksp_ebt_cash_eligible');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wksp_snap_eligible', 'wksp_ebt_cash_eligible');

