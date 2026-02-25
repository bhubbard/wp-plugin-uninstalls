-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('venomaps_settings', 'venomaps_activation_date', 'venomaps_review_notice_dismissed');
DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_dismissed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('venomaps_routes', 'venomaps_marker', 'venomaps_lat', 'venomaps_lon', 'venomaps_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('venomaps_routes', 'venomaps_marker', 'venomaps_lat', 'venomaps_lon', 'venomaps_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('venomaps_routes', 'venomaps_marker', 'venomaps_lat', 'venomaps_lon', 'venomaps_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('venomaps_routes', 'venomaps_marker', 'venomaps_lat', 'venomaps_lon', 'venomaps_style');

