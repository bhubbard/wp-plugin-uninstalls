-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7rdr_redirect_url', '_cf7rdr_redirect_delay', '_cf7rdr_redirect_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7rdr_redirect_url', '_cf7rdr_redirect_delay', '_cf7rdr_redirect_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7rdr_redirect_url', '_cf7rdr_redirect_delay', '_cf7rdr_redirect_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7rdr_redirect_url', '_cf7rdr_redirect_delay', '_cf7rdr_redirect_enabled');

