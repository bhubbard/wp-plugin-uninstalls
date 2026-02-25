-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qdbu_quick_download_button_page_id', 'qdbn_option_name');

