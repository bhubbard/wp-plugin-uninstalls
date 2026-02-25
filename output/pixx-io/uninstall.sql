-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale', 'pixxio_id', 'pixxio_import_gmt', 'pixxio_mediaspace', 'pixxio_downloadFormat');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale', 'pixxio_id', 'pixxio_import_gmt', 'pixxio_mediaspace', 'pixxio_downloadFormat');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale', 'pixxio_id', 'pixxio_import_gmt', 'pixxio_mediaspace', 'pixxio_downloadFormat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale', 'pixxio_id', 'pixxio_import_gmt', 'pixxio_mediaspace', 'pixxio_downloadFormat');

