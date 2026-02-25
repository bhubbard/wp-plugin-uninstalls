-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rdpano_title', 'rdpano_width', 'rdpano_height', 'rdpano_global_swf', 'rdpano_panopress', 'rdpano_panostudio');

