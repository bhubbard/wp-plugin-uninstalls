-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('project_key', 'localizejs_settings_url_options', 'localizejs_settings_allow_inline_break_tags', 'localizejs_settings_auto_approve', 'localizejs_settings_retranslate_on_new_phrases');

