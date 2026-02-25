-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gosmtp_pro_version', 'gosmtp_version', 'gosmtp_options', 'softaculous_plugin_update_notice', 'update_plugins');

