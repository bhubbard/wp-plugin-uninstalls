-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('envira_lite_version', 'envira_lite_wizard', 'envira_version', 'envira_over_time', 'envira_debug', 'envira_pro_upgrade_header_dismissed', 'envira_gallery', 'envira_gallery_116', 'envira_gallery_121', 'envira_tags_taxonomy_migrated', 'envira_gallery_shareasale_id', 'envira_admin_menu_tooltip', 'envira_gallery_notices', 'hide_am_notices', 'envira_onboarding_data', 'envira_permissions_default', 'envira_gallery_review', 'envira_permissions_set_default', 'envira_usage_tracking_last_checkin', 'envira_usage_tracking_config', '_eg_cache_all', '_envira_lite_activation_redirect', 'envira_lite_updated', '_eg_addons');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '_eg_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eg_gallery_data', '_eg_gallery_id', '_eg_has_gallery', '_eg_in_gallery', '_wp_attachment_image_alt', '_eg_gallery_old', '_eg_gallery_old_slug', '_eg_in_posts', '_eg_just_published');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eg_gallery_data', '_eg_gallery_id', '_eg_has_gallery', '_eg_in_gallery', '_wp_attachment_image_alt', '_eg_gallery_old', '_eg_gallery_old_slug', '_eg_in_posts', '_eg_just_published');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eg_gallery_data', '_eg_gallery_id', '_eg_has_gallery', '_eg_in_gallery', '_wp_attachment_image_alt', '_eg_gallery_old', '_eg_gallery_old_slug', '_eg_in_posts', '_eg_just_published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eg_gallery_data', '_eg_gallery_id', '_eg_has_gallery', '_eg_in_gallery', '_wp_attachment_image_alt', '_eg_gallery_old', '_eg_gallery_old_slug', '_eg_in_posts', '_eg_just_published');

