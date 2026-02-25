-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_cmt_mimes', '_cmt_max_upload_size', '_cmt_size_unit', '_cmt_activated');

