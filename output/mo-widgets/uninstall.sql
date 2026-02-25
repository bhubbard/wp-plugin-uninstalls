-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dw_check_new_pages', 'dw_saved_page_list', 'dw_saved_cat_list');

