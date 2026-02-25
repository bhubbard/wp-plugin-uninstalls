-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thim_login_page', 'woocommerce_stock_format', 'thim_ekit_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thim_elementor_type', 'thim_loop_item_post_type', 'thim_ekits_conditions', 'thim_elementor_sticky', '_elementor_data', '_sale_price_dates_to', '_lp_featured_review', '_lp_course_result', '_lp_cert', '_lp_sale_end', '_wp_attachment_image_alt', 'thim_ekit_slider_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('thim_elementor_type', 'thim_loop_item_post_type', 'thim_ekits_conditions', 'thim_elementor_sticky', '_elementor_data', '_sale_price_dates_to', '_lp_featured_review', '_lp_course_result', '_lp_cert', '_lp_sale_end', '_wp_attachment_image_alt', 'thim_ekit_slider_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('thim_elementor_type', 'thim_loop_item_post_type', 'thim_ekits_conditions', 'thim_elementor_sticky', '_elementor_data', '_sale_price_dates_to', '_lp_featured_review', '_lp_course_result', '_lp_cert', '_lp_sale_end', '_wp_attachment_image_alt', 'thim_ekit_slider_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thim_elementor_type', 'thim_loop_item_post_type', 'thim_ekits_conditions', 'thim_elementor_sticky', '_elementor_data', '_sale_price_dates_to', '_lp_featured_review', '_lp_course_result', '_lp_cert', '_lp_sale_end', '_wp_attachment_image_alt', 'thim_ekit_slider_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'thim_ekits_cond_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'thim_ekits_cond_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'thim_ekits_cond_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'thim_ekits_cond_%';

