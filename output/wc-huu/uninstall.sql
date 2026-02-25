-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('setup_huu_wts_prod_box_block_woo', 'setup_huu_wts_prod_box_woo', 'setup_huu_wts_prod_page_woo', 'setup_huu_wts_text_woo', 'setup_huu_wts_number_woo');

