-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deepl_default_locale', 'wpdeepl_api_key', 'wpdeepl_api_server', 'wpdeepl_glossaries', 'wpdeepl_log_level', 'wpdeepl_metabox_post_types', 'wpdeepl_pro_post_types', 'wpdeepl_metabox_behaviour', 'wpdeepl_default_language', 'wpdeepl_displayed_languages', 'wpdeepl_metabox_context', 'wpdeepl_metabox_priority', 'wpdeepl_plugin_installed', 'wpdeepl_default_formality', 'wpdeepl_contents_to_translate', 'wpdeepl_target_locales', 'wpdeepl_bulk_target_locales', 'deepl_plugin_installed', 'wpdeepl_allow_front_end');
DELETE FROM wp_options WHERE option_name LIKE 'wpdeepl_formality_%';

