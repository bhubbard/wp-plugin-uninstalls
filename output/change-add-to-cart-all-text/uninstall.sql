-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcatct_global_txt', 'wcatct_global_txt_diff', 'wcatct_archive_txt', 'wcatct_product_type_txt_diff_archive', 'wcatct_single_txt', 'wcatct_product_type_txt_diff_single');

