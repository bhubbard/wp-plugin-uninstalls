-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flux_ai_alt_creator_settings', 'flux-plugins_common_options', 'flux_ai_media_alt_creator_activation_redirect', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_flux_ai_alt_creator_scan_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_flux_ai_alt_creator_scan_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_flux_ai_alt_creator_scan_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_flux_ai_alt_creator_scan_data');

