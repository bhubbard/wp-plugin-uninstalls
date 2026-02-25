-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfg_enable_free_gift', 'wfg_minimum_cart_value', 'wfg_gift_category', 'wfg_message_value_low', 'wfg_button_value_low', 'wfg_message_value_ok', 'wfg_button_value_ok');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_virtual');
DELETE FROM wp_usermeta WHERE meta_key IN ('_virtual');
DELETE FROM wp_termmeta WHERE meta_key IN ('_virtual');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_virtual');

