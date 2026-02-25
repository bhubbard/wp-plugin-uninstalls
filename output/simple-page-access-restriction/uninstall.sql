-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps_simple_par_subscription_shown', 'ps_simple_par_review_time', 'ps_simple_par_dismiss_review_notice', 'ps_simple_par_settings', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('page_access_restricted');
DELETE FROM wp_usermeta WHERE meta_key IN ('page_access_restricted');
DELETE FROM wp_termmeta WHERE meta_key IN ('page_access_restricted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('page_access_restricted');

