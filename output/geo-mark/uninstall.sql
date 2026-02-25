-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geo-rss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('get_geo', 'geo-info');
DELETE FROM wp_usermeta WHERE meta_key IN ('get_geo', 'geo-info');
DELETE FROM wp_termmeta WHERE meta_key IN ('get_geo', 'geo-info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('get_geo', 'geo-info');

