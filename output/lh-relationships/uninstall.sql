-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wgs84:lat', 'wgs84:long', 'foobar');
DELETE FROM wp_usermeta WHERE meta_key IN ('wgs84:lat', 'wgs84:long', 'foobar');
DELETE FROM wp_termmeta WHERE meta_key IN ('wgs84:lat', 'wgs84:long', 'foobar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wgs84:lat', 'wgs84:long', 'foobar');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ical:dt%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ical:dt%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ical:dt%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ical:dt%';

