-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sppcfw_basic', 'sppcfw_advanced', 'sppcfw_plugin_do_activation_redirect', 'sppcfw_myplugin_activation_date', 'sppcfw_review_dismissed');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webcfwc_variation_meta', 'sppcfw_category_based_settings', 'sppcfw_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('webcfwc_variation_meta', 'sppcfw_category_based_settings', 'sppcfw_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('webcfwc_variation_meta', 'sppcfw_category_based_settings', 'sppcfw_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webcfwc_variation_meta', 'sppcfw_category_based_settings', 'sppcfw_product');

