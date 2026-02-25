-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'active_sitewide_plugins', 'wcfm_capability_options', 'wcfm_marketplace_options', 'woocommerce_manage_stock', 'woocommerce_price_num_decimals', 'wcfmvm_registration_custom_fields', 'wcfm_shipping_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'wp_user_avatar', 'wcfmmp_profile_settings', '_disable_vendor', '_wcfm_store_offline', '_wcfm_email_verified', '_wcfm_email_verified_for', 'wcfmvm_custom_infos', 'wcfm_membership', 'wcfm_membership_next_schedule', 'subscription', 'wcfm_membership_billing_period', 'wcfm_membership_billing_cycle');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'wp_user_avatar', 'wcfmmp_profile_settings', '_disable_vendor', '_wcfm_store_offline', '_wcfm_email_verified', '_wcfm_email_verified_for', 'wcfmvm_custom_infos', 'wcfm_membership', 'wcfm_membership_next_schedule', 'subscription', 'wcfm_membership_billing_period', 'wcfm_membership_billing_cycle');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'wp_user_avatar', 'wcfmmp_profile_settings', '_disable_vendor', '_wcfm_store_offline', '_wcfm_email_verified', '_wcfm_email_verified_for', 'wcfmvm_custom_infos', 'wcfm_membership', 'wcfm_membership_next_schedule', 'subscription', 'wcfm_membership_billing_period', 'wcfm_membership_billing_cycle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'display_type', 'order', 'thumbnail_id', 'wp_user_avatar', 'wcfmmp_profile_settings', '_disable_vendor', '_wcfm_store_offline', '_wcfm_email_verified', '_wcfm_email_verified_for', 'wcfmvm_custom_infos', 'wcfm_membership', 'wcfm_membership_next_schedule', 'subscription', 'wcfm_membership_billing_period', 'wcfm_membership_billing_cycle');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

