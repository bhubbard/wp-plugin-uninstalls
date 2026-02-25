-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redirectify_db_version', 'galleryify_db_version', 'redirect_name', 'redirect_url', 'redirect_case');

