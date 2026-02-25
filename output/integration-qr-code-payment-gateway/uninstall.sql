-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('negpaywc_plugin_dismiss_rating_notice', 'negpaywc_plugin_no_thanks_rating_notice', 'negpay_plugin_installed_time', 'negpaywc-admin-notice-on-activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_negpaywc_order_paid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_negpaywc_order_paid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_negpaywc_order_paid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_negpaywc_order_paid');

