-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_country', 'visidea_plugin_options', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_feed_mpn', 'woo_feed_ean');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_feed_mpn', 'woo_feed_ean');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_feed_mpn', 'woo_feed_ean');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_feed_mpn', 'woo_feed_ean');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

