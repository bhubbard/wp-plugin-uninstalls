-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrfs_snooker_org_api_key', 'mrfs_snooker_org_show_powered_by');

