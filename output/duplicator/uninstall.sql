-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('backwpup_cfg_logfolder', 'site_admins', 'active_sitewide_plugins', 'gd_system_last_cache_flush', 'duplicator_exe_safe_mode');

