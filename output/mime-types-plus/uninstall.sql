-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mimetypesplus', 'mimetypesplus_exts', 'mimetypesplus_settings');

