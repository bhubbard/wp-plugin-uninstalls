-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rp_title', 'rp_show_type', 'rp_slider_type', 'rp_number_related_products', 'rp_number_related_products_columns', 'rp_related_products_by', 'rp_slider_auto_play', 'rp_slider_navigation', 'rp_slider_navigation_position', 'rp_slider_pagination', 'rp_slider_pagination_number', 'rp_slider_navigation_prev_text', 'rp_slider_navigation_next_text', 'rp_slider_direction');

