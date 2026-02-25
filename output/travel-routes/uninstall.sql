-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('travel_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dates', 'route_show', 'route_color', 'route_dashed', 'details', 'code');
DELETE FROM wp_usermeta WHERE meta_key IN ('dates', 'route_show', 'route_color', 'route_dashed', 'details', 'code');
DELETE FROM wp_termmeta WHERE meta_key IN ('dates', 'route_show', 'route_color', 'route_dashed', 'details', 'code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dates', 'route_show', 'route_color', 'route_dashed', 'details', 'code');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'route_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'route_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'route_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'route_%';

