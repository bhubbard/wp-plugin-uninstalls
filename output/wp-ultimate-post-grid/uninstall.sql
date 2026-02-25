-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpupg_activated', 'wpupg_flush', 'wpupg_migrated_to_version', 'wpupg_templates', 'wpupg_option');
DELETE FROM wp_options WHERE option_name LIKE 'wpupg_template_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpupg_dismissed_notices', 'wpupg_custom_link', 'wpupg_custom_link_behaviour', 'wpupg_custom_link_nofollow', 'wpupg_custom_image', 'wpupg_custom_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpupg_dismissed_notices', 'wpupg_custom_link', 'wpupg_custom_link_behaviour', 'wpupg_custom_link_nofollow', 'wpupg_custom_image', 'wpupg_custom_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpupg_dismissed_notices', 'wpupg_custom_link', 'wpupg_custom_link_behaviour', 'wpupg_custom_link_nofollow', 'wpupg_custom_image', 'wpupg_custom_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpupg_dismissed_notices', 'wpupg_custom_link', 'wpupg_custom_link_behaviour', 'wpupg_custom_link_nofollow', 'wpupg_custom_image', 'wpupg_custom_image_id');

