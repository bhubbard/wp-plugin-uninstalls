-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('surleg_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_surl_redirect', '_surl_count', 'date_published');
DELETE FROM wp_usermeta WHERE meta_key IN ('_surl_redirect', '_surl_count', 'date_published');
DELETE FROM wp_termmeta WHERE meta_key IN ('_surl_redirect', '_surl_count', 'date_published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_surl_redirect', '_surl_count', 'date_published');

