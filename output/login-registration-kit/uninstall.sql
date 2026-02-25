-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user_registration_kit_account_page', 'name', 'lrk_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lrk_user_account_page', 'lrk_avatar_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('lrk_user_account_page', 'lrk_avatar_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('lrk_user_account_page', 'lrk_avatar_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lrk_user_account_page', 'lrk_avatar_image');

