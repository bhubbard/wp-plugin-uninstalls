-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awwlm_general_settings', 'awwlm_button_settings', 'awwlm_page_settings', 'awwlm_wishlist_page', 'awwlm_save_for_later_settings', 'active_sitewide_plugins', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awwlm_is_default', 'awwlm_savelist');
DELETE FROM wp_usermeta WHERE meta_key IN ('awwlm_is_default', 'awwlm_savelist');
DELETE FROM wp_termmeta WHERE meta_key IN ('awwlm_is_default', 'awwlm_savelist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awwlm_is_default', 'awwlm_savelist');

