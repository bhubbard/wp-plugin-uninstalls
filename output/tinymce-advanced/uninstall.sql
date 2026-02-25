-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tadv_admin_settings', 'tadv_settings', 'tadv_version', 'tadv_options', 'tadv_toolbars', 'tadv_plugins', 'tadv_btns1', 'tadv_btns2', 'tadv_btns3', 'tadv_btns4', 'tadv_allbtns');

