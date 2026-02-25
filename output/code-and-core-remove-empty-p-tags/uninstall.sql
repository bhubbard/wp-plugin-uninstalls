-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('code_core_tracking_optin', 'code_core_plugin_version');
DELETE FROM wp_options WHERE option_name LIKE 'code_and_core_remove_empty_p_tags_notice_%';

