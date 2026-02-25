-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g7g_cfg_options', 'g7g-cfg-dismiss-notice');

