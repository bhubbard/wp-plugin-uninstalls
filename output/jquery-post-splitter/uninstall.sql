-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jps_options', 'jps_restrictions', 'jps_analytics_id', 'jps_custom_style', 'jps_custom_section', 'jps_custom_section_below');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jps_nav_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('jps_nav_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('jps_nav_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jps_nav_type');

