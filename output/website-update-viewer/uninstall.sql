-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpuv_hide_plugin', 'wpuv_change_update_text', 'wpuv_change_updates_heading', 'update_core', 'update_plugins', 'update_themes');

