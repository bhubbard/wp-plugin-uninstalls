-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ect_portfolio', 'ect_testimonial', 'ect_featured_content', 'ect_service', 'ect_food_menu', 'featured_content_content', 'ect_food_menu_order', 'jetpack_portfolio_content', 'ect_service_content', 'jetpack_testimonial_content', 'ctp_options', 'featured-content-count-cache', 'jetpack-portfolio-count-cache', 'service-count-cache', 'jetpack-testimonial-count-cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ect_food_price', 'ect_testimonial_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('ect_food_price', 'ect_testimonial_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('ect_food_price', 'ect_testimonial_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ect_food_price', 'ect_testimonial_position');

