-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'dkgfsib-free_version', 'wpconnectgfsib_deactivated_notice_id');

