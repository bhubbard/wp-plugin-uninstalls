-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buy_button_plus_cart_id', 'buy_button_plus_cart_access_validated', 'buy_button_plus_buttons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('buy_button_plus_warning_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('buy_button_plus_warning_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('buy_button_plus_warning_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('buy_button_plus_warning_dismissed');

