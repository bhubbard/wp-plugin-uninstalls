-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'classic-editor-allow-users', 'sidebars_widgets', 'sf_queue_flush_rewrite_rules', 'sf_exclude_rules', 'sf_app_api_key', 'stalkfish_last_error', 'stalkfish_connect_timeout', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

