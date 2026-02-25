-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_smaily_widget', 'smailyforwc_db_version', 'smaily_woocommerce_upgrade_1_4_0_notice', 'smaily_woocommerce_upgrade_1_5_0_notice', 'smailyforwc_plugin_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_newsletter', 'smaily_for_woocommerce_deprecation_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_newsletter', 'smaily_for_woocommerce_deprecation_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_newsletter', 'smaily_for_woocommerce_deprecation_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_newsletter', 'smaily_for_woocommerce_deprecation_notice_dismissed');

