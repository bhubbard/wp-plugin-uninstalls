-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('planeupload_enc_key', 'planeupload_options', 'planeupload_prototype');

