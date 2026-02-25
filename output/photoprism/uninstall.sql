-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SP_text_1', 'SP_text_2', 'ps_myphoto_page_id', 'SP_option_name');

