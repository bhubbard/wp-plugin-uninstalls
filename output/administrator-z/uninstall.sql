-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_shop', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'woocommerce_shop_page_id', 'adminz_flatsome', 'adminz_tools', 'woocommerce_email_header_image', 'woocommerce_email_footer_text', 'woocommerce_vnpay_settings', 'd2c_interiors', 'woocommerce_email_header_image', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adminz_video_url', 'thumbnail_id', 'adminz_countview', 'tax_template_block_id', 'template_block_id', '_adminz_clone_base_id', 'adminz_preload_images', 'adminz_custom_permalink', '_selected_sidebar', '__discount_amount', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adminz_video_url', 'thumbnail_id', 'adminz_countview', 'tax_template_block_id', 'template_block_id', '_adminz_clone_base_id', 'adminz_preload_images', 'adminz_custom_permalink', '_selected_sidebar', '__discount_amount', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adminz_video_url', 'thumbnail_id', 'adminz_countview', 'tax_template_block_id', 'template_block_id', '_adminz_clone_base_id', 'adminz_preload_images', 'adminz_custom_permalink', '_selected_sidebar', '__discount_amount', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_adminz_video_url', 'thumbnail_id', 'adminz_countview', 'tax_template_block_id', 'template_block_id', '_adminz_clone_base_id', 'adminz_preload_images', 'adminz_custom_permalink', '_selected_sidebar', '__discount_amount', '_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_block_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_block_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_block_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_block_id';

