-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcmb_settings', 'wpcmb_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcmb_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcmb_assortments', 'wpcmb_custom_price', 'wpcmb_before_text', 'wpcmb_after_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcmb_assortments', 'wpcmb_custom_price', 'wpcmb_before_text', 'wpcmb_after_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcmb_assortments', 'wpcmb_custom_price', 'wpcmb_before_text', 'wpcmb_after_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcmb_assortments', 'wpcmb_custom_price', 'wpcmb_before_text', 'wpcmb_after_text');

