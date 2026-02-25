-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cargo_tracking_for_woocommerce', 'cargo_tracking_for_woocommerce_emailCheck', 'cargo_tracking_for_woocommerce_emailHeading', 'cargo_tracking_for_woocommerce_emailSubject', 'cargo_tracking_for_woocommerce_emailDescription', 'cargo_tracking_for_woocommerce_emailTemplates', 'cargo_tracking_for_woocommerce_disablePluginStatus', 'cargo_tracking_for_woocommerce_deletePluginData');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cargo_tracking_for_woocommerce-data');
DELETE FROM wp_usermeta WHERE meta_key IN ('cargo_tracking_for_woocommerce-data');
DELETE FROM wp_termmeta WHERE meta_key IN ('cargo_tracking_for_woocommerce-data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cargo_tracking_for_woocommerce-data');

