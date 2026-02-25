-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbs_package', 'step_order', 'sbs_general', 'sbs_version', 'sbs_navbar', 'sbs_onf', 'sbs_display', 'sbs_premium_key', 'sbs_premium_key_valid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_merch_credit', '_required_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('_merch_credit', '_required_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('_merch_credit', '_required_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_merch_credit', '_required_product');

