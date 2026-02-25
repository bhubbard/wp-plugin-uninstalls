-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7bot_enabled', '_cf7bot_toggle', '_cf7bot_form_id', '_cf7bot_form_outer', '_cf7bot_bot_icon', '_cf7bot_user_icon', '_cf7bot_form_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7bot_enabled', '_cf7bot_toggle', '_cf7bot_form_id', '_cf7bot_form_outer', '_cf7bot_bot_icon', '_cf7bot_user_icon', '_cf7bot_form_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7bot_enabled', '_cf7bot_toggle', '_cf7bot_form_id', '_cf7bot_form_outer', '_cf7bot_bot_icon', '_cf7bot_user_icon', '_cf7bot_form_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7bot_enabled', '_cf7bot_toggle', '_cf7bot_form_id', '_cf7bot_form_outer', '_cf7bot_bot_icon', '_cf7bot_user_icon', '_cf7bot_form_fields');

