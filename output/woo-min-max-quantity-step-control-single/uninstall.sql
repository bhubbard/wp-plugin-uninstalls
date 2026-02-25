-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcmmq_recommsss', 'wcmmq_license_key', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add', 'wcmmq_s_universal_minmaxstep', 'wcmmq_universal_minmaxstep', 'codersaiful_browse_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date';
DELETE FROM wp_options WHERE option_name LIKE '%_right_now';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%min_quantity';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%min_quantity';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%min_quantity';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%min_quantity';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_quantity';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_quantity';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_quantity';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_quantity';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%max_quantity';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%max_quantity';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%max_quantity';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%max_quantity';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%product_step';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%product_step';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%product_step';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%product_step';

