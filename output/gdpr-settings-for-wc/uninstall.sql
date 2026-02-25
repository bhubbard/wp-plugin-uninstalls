-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_tab_gdpr_promo_label', 'wc_settings_tab_gdpr_top_layer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_gdprpromo_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_gdprpromo_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_gdprpromo_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_gdprpromo_checkbox');

