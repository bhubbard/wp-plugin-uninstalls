-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autopost_ai_do_activation_redirect', 'autopost_ai_show_deactivation_warning', 'autopost_ai_remove_data_on_uninstall', 'autopost_ai_api_key', 'autopost_ai_post_settings', 'autopost_ai_prompt', 'autopost_ai_last_post_created_at');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_autopost_ai_queue_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_autopost_ai_queue_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_autopost_ai_queue_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_autopost_ai_queue_id', '_wp_attachment_image_alt');

