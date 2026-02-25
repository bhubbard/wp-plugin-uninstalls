-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgb_where_show', 'mgb_show_image', 'mgb_brand_title', 'mgb_detail_position', 'mgb_category_position');

