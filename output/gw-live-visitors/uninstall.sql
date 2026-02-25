-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gwlv_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sid', 'last_seen', 'last_url', 'hits', 'ip', 'country', 'lat', 'lon', 'first_seen', 'ua');
DELETE FROM wp_usermeta WHERE meta_key IN ('sid', 'last_seen', 'last_url', 'hits', 'ip', 'country', 'lat', 'lon', 'first_seen', 'ua');
DELETE FROM wp_termmeta WHERE meta_key IN ('sid', 'last_seen', 'last_url', 'hits', 'ip', 'country', 'lat', 'lon', 'first_seen', 'ua');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sid', 'last_seen', 'last_url', 'hits', 'ip', 'country', 'lat', 'lon', 'first_seen', 'ua');

