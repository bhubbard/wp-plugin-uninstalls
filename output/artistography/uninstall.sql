-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_artistography_version', 'wp_artistography_business_name', 'wp_artistography_donate_email', 'wp_artistography_paypal_sandbox', 'wp_artistography_preserve_hidden_pages', 'wp_artistography_preserve_database', 'wp_artistography_email_notify_ftp', 'wp_artistography_ftp_host', 'wp_artistography_ftp_user', 'wp_artistography_ftp_pass', 'wp_artistography_ftp_path', 'wp_artistography_gallery_style', 'wp_artistography_ajax_loader', 'wp_artistography_download_page', 'wp_artistography_cart_page', 'wp_artistography_checkout_page', 'wp_artistography_thankyou_page', 'wp_artistography_orders_page', 'wp_artistography_ipn_page', 'wp_artistography_products_cart_page', 'wp_aristography_products_cart_page', 'wp_artistography_products_checkout_page', 'wp_aristography_products_checkout_page');

