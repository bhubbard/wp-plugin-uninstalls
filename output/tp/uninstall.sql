-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tp_options', 'tp_app_options', 'rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('twuid', 'twitter_user_id', 'twitter_profile_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('twuid', 'twitter_user_id', 'twitter_profile_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('twuid', 'twitter_user_id', 'twitter_profile_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('twuid', 'twitter_user_id', 'twitter_profile_image');

