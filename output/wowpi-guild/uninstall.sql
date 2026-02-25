-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wowpi_guild_credentials', 'wowpi_guild_guild', 'wowpi_guild_realms', 'wowpi_guild_guild_roster', 'wowpi_guild_classes', 'wowpi_guild_races', 'wowpi_guild_specializations', 'acf_version', 'update_plugins', 'acf_plugin_updates');
DELETE FROM wp_options WHERE option_name LIKE 'wowpi_guild_class_%';
DELETE FROM wp_options WHERE option_name LIKE '%_specs';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');

