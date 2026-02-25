-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_hd_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_hide_download', '_edd_hide_redirect_download');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_hide_download', '_edd_hide_redirect_download');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_hide_download', '_edd_hide_redirect_download');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_hide_download', '_edd_hide_redirect_download');

