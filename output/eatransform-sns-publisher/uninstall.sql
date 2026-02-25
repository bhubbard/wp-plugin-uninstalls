-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eatransform_sns_last_debug', 'eatransform_sns_publisher_settings', 'wp_twitter_auto_poster_settings', 'wp_sns_auto_poster_settings', 'eatransform_sns_error', 'eatransform_sns_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eatransform_sns_addon_dismissed', '_eatransform_sns_posted', '_eatransform_sns_posted_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('eatransform_sns_addon_dismissed', '_eatransform_sns_posted', '_eatransform_sns_posted_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('eatransform_sns_addon_dismissed', '_eatransform_sns_posted', '_eatransform_sns_posted_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eatransform_sns_addon_dismissed', '_eatransform_sns_posted', '_eatransform_sns_posted_at');

