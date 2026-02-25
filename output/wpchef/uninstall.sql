-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpchef_server', 'wpchef_access_token', 'wpchef_stats_token', 'wpchef_statsusers', 'wpchef_server_name', 'wpchef_actions_made', 'wpchef_installed_recipes', 'wpchef_recipes', 'wpchef_builtin_installed', 'wpchef_autoupdate', 'wpchef_updates_alert_sent', 'wpchef_recipes_updates', 'wpchef_autoupdate_queue', 'wpchef_themes_history', 'wpchef_me', 'wpchef_cache', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wpchef_%';
DELETE FROM wp_options WHERE option_name LIKE 'recipe_autoupdate_alert_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpchef_autoupdate_actions_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpchef_recipe_children_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpchef_recipe_%';
DELETE FROM wp_options WHERE option_name LIKE 'recipe-confirm-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpchef_fetch_recipe_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpchef_apply_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'wpchef_auth_now');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'wpchef_auth_now');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'wpchef_auth_now');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'wpchef_auth_now');

