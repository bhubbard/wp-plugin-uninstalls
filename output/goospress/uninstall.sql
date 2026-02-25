-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goosp_lang_code', 'goosp_disp_clos', 'goosp_edit_post', 'goosp_edit_page', 'goosp_edit_cmnt', 'goosp_lang_chkb');

