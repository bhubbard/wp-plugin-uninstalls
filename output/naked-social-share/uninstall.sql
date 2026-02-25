-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('naked_social_share_settings', 'naked_social_share_version', 'naked_ss__settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('naked_shares_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('naked_shares_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('naked_shares_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('naked_shares_count');

