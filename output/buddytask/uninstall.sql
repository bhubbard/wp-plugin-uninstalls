-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', '_ buddytask_version', '_buddytask_enabled', '_ buddytask_is_new_install', '_ buddytask_activation_redirect');

