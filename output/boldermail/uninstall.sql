-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boldermail_url', 'boldermail_queue_flush_rewrite_rules', 'boldermail_instagram_integration', 'boldermail_add_default_templates', 'boldermail_default_templates', 'boldermail_active_version', 'boldermail_is_upgrading', 'boldermail_previous_version', 'boldermail_api', 'boldermail_app', 'boldermail_siteurl', 'doing_cron');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_preview', '_parent_meta_key', '_use_block_editor', '_block_template_post_id', '_template_style', '_html');
DELETE FROM wp_usermeta WHERE meta_key IN ('_preview', '_parent_meta_key', '_use_block_editor', '_block_template_post_id', '_template_style', '_html');
DELETE FROM wp_termmeta WHERE meta_key IN ('_preview', '_parent_meta_key', '_use_block_editor', '_block_template_post_id', '_template_style', '_html');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_preview', '_parent_meta_key', '_use_block_editor', '_block_template_post_id', '_template_style', '_html');

