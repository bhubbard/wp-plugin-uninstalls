-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('se-social-share');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('se_enable_social_share');
DELETE FROM wp_usermeta WHERE meta_key IN ('se_enable_social_share');
DELETE FROM wp_termmeta WHERE meta_key IN ('se_enable_social_share');
DELETE FROM wp_commentmeta WHERE meta_key IN ('se_enable_social_share');

