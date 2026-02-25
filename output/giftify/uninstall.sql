-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giftify_settings_giftify_checkbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('giftify_title', 'message', 'giftify_fees', 'giftify_select');
DELETE FROM wp_usermeta WHERE meta_key IN ('giftify_title', 'message', 'giftify_fees', 'giftify_select');
DELETE FROM wp_termmeta WHERE meta_key IN ('giftify_title', 'message', 'giftify_fees', 'giftify_select');
DELETE FROM wp_commentmeta WHERE meta_key IN ('giftify_title', 'message', 'giftify_fees', 'giftify_select');

