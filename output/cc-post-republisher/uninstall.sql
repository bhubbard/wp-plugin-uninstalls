-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_post_republisher_settings', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('creative_commons_post_republisher_license-type');
DELETE FROM wp_usermeta WHERE meta_key IN ('creative_commons_post_republisher_license-type');
DELETE FROM wp_termmeta WHERE meta_key IN ('creative_commons_post_republisher_license-type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('creative_commons_post_republisher_license-type');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'creative_commons_post_republisher_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'creative_commons_post_republisher_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'creative_commons_post_republisher_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'creative_commons_post_republisher_%';

