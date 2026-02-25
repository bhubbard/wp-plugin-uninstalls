-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ialoc_locale', 'ialoc_embed_mode', 'ialoc_id', 'ialoc_extra_config', 'ialoc_callback_type', 'ialoc_thank_you_url', 'ialoc_custom_js');

