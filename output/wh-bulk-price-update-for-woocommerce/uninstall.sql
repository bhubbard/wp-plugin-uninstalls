-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wh_bulk_price_update_block_size', 'wh_bulk_price_update_preview_block_size', 'wh_bulk_price_update_time_limit');
DELETE FROM wp_options WHERE option_name LIKE '%_en';
DELETE FROM wp_options WHERE option_name LIKE '%_de';

