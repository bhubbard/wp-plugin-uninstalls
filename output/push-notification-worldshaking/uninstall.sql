-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WSBPN_WPSetting', 'wsbpn_transient_error');

