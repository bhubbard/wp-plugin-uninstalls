-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdpr_requests', 'gdpr_cookie_popup_content', 'gdpr_consent_types', 'gdpr_disable_css', 'gdpr_enable_telemetry_tracker', 'gdpr_use_recaptcha', 'gdpr_recaptcha_site_key', 'gdpr_recaptcha_secret_key', 'gdpr_add_consent_checkboxes_registration', 'gdpr_add_consent_checkboxes_checkout', 'gdpr_refresh_after_preferences_update', 'gdpr_enable_privacy_bar', 'gdpr_display_cookie_categories_in_bar', 'gdpr_hide_from_bots', 'gdpr_reconsent_template', 'gdpr_policies_updated', 'gdpr_data_breach_initiated', 'gdpr_email_limit', 'gdpr_deletion_needs_review', 'gdpr_cookie_banner_content', 'gdpr_cookie_privacy_excerpt', 'gdpr_updated', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gdpr_consents', 'gdpr_audit_log', 'panels_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('gdpr_consents', 'gdpr_audit_log', 'panels_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('gdpr_consents', 'gdpr_audit_log', 'panels_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gdpr_consents', 'gdpr_audit_log', 'panels_data');

