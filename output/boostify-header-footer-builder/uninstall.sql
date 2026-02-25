-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_permalinks_flushed', 'woocommerce_shop_page_id', 'elementor_maintenance_mode_mode', 'elementor_maintenance_mode_template_id', 'woocommerce_cart_redirect_after_add');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bhf_type', 'bhf_display', 'bhf_post', 'bhf_post_type', 'bhf_no_display', 'bhf_ex_post_type', 'bhf_ex_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('bhf_type', 'bhf_display', 'bhf_post', 'bhf_post_type', 'bhf_no_display', 'bhf_ex_post_type', 'bhf_ex_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('bhf_type', 'bhf_display', 'bhf_post', 'bhf_post_type', 'bhf_no_display', 'bhf_ex_post_type', 'bhf_ex_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bhf_type', 'bhf_display', 'bhf_post', 'bhf_post_type', 'bhf_no_display', 'bhf_ex_post_type', 'bhf_ex_post');

