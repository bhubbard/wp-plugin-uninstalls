-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wzm_posts_per_page', 'wzm_products_per_page', 'wzm_json_update_time');

