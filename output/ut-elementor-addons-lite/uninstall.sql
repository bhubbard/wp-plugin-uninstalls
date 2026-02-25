-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ut_settings', 'ut_flush', 'woocommerce_shop_page_id', 'elementor_maintenance_mode_mode', 'elementor_maintenance_mode_template_id', 'ua_enable_sticky', 'ua_enable_transparent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'ut_mark_default', 'ut_type', 'ut_display', 'ut_post', 'ut_featured_image', 'ut_post_type', 'ut_no_display', 'ut_ex_post_type', 'ut_ex_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'ut_mark_default', 'ut_type', 'ut_display', 'ut_post', 'ut_featured_image', 'ut_post_type', 'ut_no_display', 'ut_ex_post_type', 'ut_ex_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'ut_mark_default', 'ut_type', 'ut_display', 'ut_post', 'ut_featured_image', 'ut_post_type', 'ut_no_display', 'ut_ex_post_type', 'ut_ex_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'ut_mark_default', 'ut_type', 'ut_display', 'ut_post', 'ut_featured_image', 'ut_post_type', 'ut_no_display', 'ut_ex_post_type', 'ut_ex_post');

