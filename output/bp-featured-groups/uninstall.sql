-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp-featured-groups-count', 'bpfg_groups_directory_banner');

