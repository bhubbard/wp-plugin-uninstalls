-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick_deploy_plugins', 'update_plugins', 'pc_ignored_plugins', 'recently_activated', 'custompitab_db_version', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'plugins_delete_result_%';

