-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lankaqrwc_plugin_dismiss_rating_notice', 'lankaqrwc_plugin_no_thanks_rating_notice', 'lankaqrwc_plugin_dismissed_time', 'lankaqrwc_plugin_installed_time', 'lankaqrwc-admin-notice-on-activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lankaqrwc_order_paid', '_lankaqr_ref_num');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lankaqrwc_order_paid', '_lankaqr_ref_num');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lankaqrwc_order_paid', '_lankaqr_ref_num');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lankaqrwc_order_paid', '_lankaqr_ref_num');

