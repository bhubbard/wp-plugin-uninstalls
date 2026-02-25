-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('playerjs_com_script_path', 'playerjs_com_width', 'playerjs_com_customheight', 'playerjs_com_height', 'playerjs_com_align');
DELETE FROM wp_options WHERE option_name LIKE 'playerjs_com_%';

