-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('m-chart', 'm_chart_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'm-chart');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'm-chart');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'm-chart');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'm-chart');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-image';

