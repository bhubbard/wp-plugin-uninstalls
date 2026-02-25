-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtpm_options', 'gtpm_version', 'gtpm_old_version', 'GTPM_DOING_UPDATE');

