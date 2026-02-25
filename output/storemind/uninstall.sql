-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storemind_hand_offs_count', 'storemind_database_options', 'storemind_configuration_options', 'storemind_appearance_options', 'storemind_handoffs_options', 'storemind_usermessages_options', 'storemind_anymind_unique_id', 'woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'storemind_on_trial', 'storemind_subscription_level', 'storemind_anymind_unique_chat_id', 'storemind_saved_site_url', 'storemind_saved_site_name', 'storemind_saved_currency', 'storemind_saved_weight_unit', 'storemind_saved_dimensions_unit', 'storemind_active_license', 'storemind_version', 'woocommerce_cart_redirect_after_add', 'woocommerce_coming_soon', 'woocommerce_site_visibility', 'woocommerce_coming_soon_scope', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wapf_fields', '_wapf_fieldgroup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wapf_fields', '_wapf_fieldgroup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wapf_fields', '_wapf_fieldgroup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wapf_fields', '_wapf_fieldgroup');

