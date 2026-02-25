-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'job_manager_job_dashboard_page_id', 'job_manager_google_maps_api_key', 'job_manager_jobs_page_id', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_enable_signup_and_login_from_checkout', 'woocommerce_enable_ajax_add_to_cart', 'mas_meta_box_errors', 'jetpack-portfolio-count-cache');
DELETE FROM wp_options WHERE option_name LIKE 'elementor_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mas_menu_item_icon_class', 'thumbnail_id', '_total_stock_quantity', '_stock', 'total_sales', '_wp_attachment_image_alt', '_portfolio_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mas_menu_item_icon_class', 'thumbnail_id', '_total_stock_quantity', '_stock', 'total_sales', '_wp_attachment_image_alt', '_portfolio_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mas_menu_item_icon_class', 'thumbnail_id', '_total_stock_quantity', '_stock', 'total_sales', '_wp_attachment_image_alt', '_portfolio_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mas_menu_item_icon_class', 'thumbnail_id', '_total_stock_quantity', '_stock', 'total_sales', '_wp_attachment_image_alt', '_portfolio_image_gallery');

