-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewdodo_api_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_name', 'order_reference', 'average_score_rounded', 'single_line', 'free_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_name', 'order_reference', 'average_score_rounded', 'single_line', 'free_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_name', 'order_reference', 'average_score_rounded', 'single_line', 'free_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_name', 'order_reference', 'average_score_rounded', 'single_line', 'free_text');

