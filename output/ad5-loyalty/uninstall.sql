-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ad5_loyalty_setting', 'ad5_loyalty_default_content_guest', 'ad5_loyalty_default_content_user');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ad5_loyalty_content_guest', 'ad5_loyalty_content_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('ad5_loyalty_content_guest', 'ad5_loyalty_content_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('ad5_loyalty_content_guest', 'ad5_loyalty_content_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ad5_loyalty_content_guest', 'ad5_loyalty_content_user');

