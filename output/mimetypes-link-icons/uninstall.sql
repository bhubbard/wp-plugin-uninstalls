-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mimetype_link_icon_options', 'mimetype_link_icons_filesize_cache');

