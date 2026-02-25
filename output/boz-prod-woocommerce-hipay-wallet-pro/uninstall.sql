-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_woohipaypro_settings', 'woohipaypro_opts', 'woocommerce_myaccount_page_id', 'woocommerce_checkout_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('allow_hipaysubscription', 'hipaysubscription_data', 'woohipaypro_subscriptions', 'woohipaypro_restrict_field', 'woohipaypro_restrict_tokens', 'woohipaypro_access', 'woohipaypro_subscription_status', 'woohipaypro_subscription_stopped', 'woohipaypro_key', 'woohipaypro_type', 'woohipaypro_operation', 'woohipaypro_status', 'woohipaypro_payments', 'woohipaypro_transid', 'woohipaypro_subid', 'woohipaypro_original_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('allow_hipaysubscription', 'hipaysubscription_data', 'woohipaypro_subscriptions', 'woohipaypro_restrict_field', 'woohipaypro_restrict_tokens', 'woohipaypro_access', 'woohipaypro_subscription_status', 'woohipaypro_subscription_stopped', 'woohipaypro_key', 'woohipaypro_type', 'woohipaypro_operation', 'woohipaypro_status', 'woohipaypro_payments', 'woohipaypro_transid', 'woohipaypro_subid', 'woohipaypro_original_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('allow_hipaysubscription', 'hipaysubscription_data', 'woohipaypro_subscriptions', 'woohipaypro_restrict_field', 'woohipaypro_restrict_tokens', 'woohipaypro_access', 'woohipaypro_subscription_status', 'woohipaypro_subscription_stopped', 'woohipaypro_key', 'woohipaypro_type', 'woohipaypro_operation', 'woohipaypro_status', 'woohipaypro_payments', 'woohipaypro_transid', 'woohipaypro_subid', 'woohipaypro_original_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('allow_hipaysubscription', 'hipaysubscription_data', 'woohipaypro_subscriptions', 'woohipaypro_restrict_field', 'woohipaypro_restrict_tokens', 'woohipaypro_access', 'woohipaypro_subscription_status', 'woohipaypro_subscription_stopped', 'woohipaypro_key', 'woohipaypro_type', 'woohipaypro_operation', 'woohipaypro_status', 'woohipaypro_payments', 'woohipaypro_transid', 'woohipaypro_subid', 'woohipaypro_original_order');

