-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adbkp_sandbox_mode', 'adbkp_username', 'adbkp_password', 'adbkp_app_key', 'adbkp_app_secret');

