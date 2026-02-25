-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registration', 'nscan_options', 'nfw_install', 'nfw_options', 'nfw_rules', 'nfw_tmp', 'nfw_checked', 'nfw_fullwaf', 'nfw_dailyreport', 'nfw_fetchsecupdates', 'nfw_version_update', 'nfw_db_check');

