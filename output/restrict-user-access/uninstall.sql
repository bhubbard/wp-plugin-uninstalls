-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rua-registration-level', '_ca_condition_type_cache', 'rua-toolbar-hide', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'qtranslate_enabled_languages', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_last', '_menu_item_level', '_ca_member_automations', '_ca_taxonomy', '_ca_autoselect', '_ca_handle', '_wp_page_template', '_ca_member_expiry');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_last', '_menu_item_level', '_ca_member_automations', '_ca_taxonomy', '_ca_autoselect', '_ca_handle', '_wp_page_template', '_ca_member_expiry');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_last', '_menu_item_level', '_ca_member_automations', '_ca_taxonomy', '_ca_autoselect', '_ca_handle', '_wp_page_template', '_ca_member_expiry');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_last', '_menu_item_level', '_ca_member_automations', '_ca_taxonomy', '_ca_autoselect', '_ca_handle', '_wp_page_template', '_ca_member_expiry');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ca_level_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ca_level_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ca_level_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ca_level_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%caps';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%caps';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%caps';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%caps';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opt_drip';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opt_drip';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opt_drip';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opt_drip';

