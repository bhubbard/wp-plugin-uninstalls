-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paypal_mode', 'stripe_mode', 'lead_currency', 'leadtrail_license_key', 'leadtrail_license_status', 'leadtrail_license_expiry_date', 'lead_publish', 'leadtrail_custom_fields', 'leadtrail_cfield_settings', 'leadtrail_cfield_settings_hide', 'paypal_api_username', 'paypal_api_password', 'paypal_api_signature', 'stripe_publishable_key', 'stripe_secret_key', 'buy_lead_page', '_leadbuyerdashboard_page', '_leaddisplayall_page', 'multiple_lead_show', 'max_lead_purchase', '_leaddetail_page', 'admin_lead_field_display', 'lead_field_display', 'cat_lead_field_display', 'group_lead_field_display', 'quality_lead_field_display', 'admin_lead_approval', 'lead_purchase_count', 'leadtrail_error', 'leadtrail_success', 'leadtrail_form_names', 'leadtrail_elementor', 'admin_note', 'GHAXlt_custom_roles_version', 'stipe_mode', 'buyer_note', 'skyrocket_product_license_key', 'skyrocket_product_license_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('leadtrail_notifications', 'leadcart');
DELETE FROM wp_usermeta WHERE meta_key IN ('leadtrail_notifications', 'leadcart');
DELETE FROM wp_termmeta WHERE meta_key IN ('leadtrail_notifications', 'leadcart');
DELETE FROM wp_commentmeta WHERE meta_key IN ('leadtrail_notifications', 'leadcart');

