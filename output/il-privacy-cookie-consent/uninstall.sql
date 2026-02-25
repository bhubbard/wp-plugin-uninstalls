-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ilpramco_salt', 'ilpramco_enable_forms_consent', 'ilpramco_policy_page_id', 'ilpramco_position', 'ilpramco_language', 'ilpramco_primary_color', 'ilpramco_respect_dnt', 'ilpramco_policy_version', 'ilpramco_banner_title', 'ilpramco_banner_text', 'ilpramco_accept_all_text', 'ilpramco_reject_text', 'ilpramco_preferences_text', 'ilpramco_modal_title', 'ilpramco_save_preferences_text', 'ilpramco_categories', 'ilpramco_script_mapping', 'ilpramco_cookies_catalog', 'ilpramco_policy_data', 'ilpramco_custom_content', 'ilpramco_use_custom_content', 'ilpramco_retention_days', 'ilpramco_enable_pattern_wrapper', 'ilpramco_keep_logs_on_uninstall', 'ilpramco_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('il_marketing_consent', 'il_marketing_consent_date', 'il_marketing_consent_revoked_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('il_marketing_consent', 'il_marketing_consent_date', 'il_marketing_consent_revoked_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('il_marketing_consent', 'il_marketing_consent_date', 'il_marketing_consent_revoked_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('il_marketing_consent', 'il_marketing_consent_date', 'il_marketing_consent_revoked_date');

