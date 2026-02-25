-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hfsp_saved_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

