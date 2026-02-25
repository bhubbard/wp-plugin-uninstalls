-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('LCGRW_options', 'LCGRW_list_page_id', 'LCGRW_add_page_id');

