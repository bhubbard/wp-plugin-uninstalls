-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_uploads_allowed_ext', 'woo_uploads_upload_as_quantity');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_uploads_on');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_uploads_on');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_uploads_on');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_uploads_on');

