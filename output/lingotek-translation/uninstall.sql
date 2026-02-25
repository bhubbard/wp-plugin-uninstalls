-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lingotek_token', 'lingotek_community', 'lingotek_prefs', 'lingotek_defaults', 'lingotek_base_url', 'lingotek_community_resources', 'lingotek_content_type', 'lingotek_log_errors', 'disassociate_source_failed', 'disassociate_target_failed', 'cancel_source_failed', 'cancel_target_failed', 'ignore_delete_pref', 'lingotek_import_prefs', 'lingotek_profiles', 'lingotek_custom_fields', 'lingotek_default_custom_fields', 'lingotek_professional_promotion_shown', 'lingotek_plugin_version', 'rewrite_rules', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('manageedit-postcolumnshidden', 'manageedit-pagecolumnshidden', 'pll_filter_content', '_wp_attachment_metadata', '_wp_attached_file', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('manageedit-postcolumnshidden', 'manageedit-pagecolumnshidden', 'pll_filter_content', '_wp_attachment_metadata', '_wp_attached_file', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('manageedit-postcolumnshidden', 'manageedit-pagecolumnshidden', 'pll_filter_content', '_wp_attachment_metadata', '_wp_attached_file', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('manageedit-postcolumnshidden', 'manageedit-pagecolumnshidden', 'pll_filter_content', '_wp_attachment_metadata', '_wp_attached_file', 'dismissed_wp_pointers');

