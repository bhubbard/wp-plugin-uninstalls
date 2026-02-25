-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qmsbf_wizard_completed', 'qmsbf_flush_rewrite_rules', 'qmsbf_business', 'qmsbf_address', 'qmsbf_settings', 'qmsbf_last_updated', 'qmsbf_display_fields', 'qmsbf_page_id', 'qmsbf_hours', 'qmsbf_social', 'qmsbf_leads', 'qmsbf_analytics', 'qmsbf_license_key', 'qmsbf_license_status', 'qmsbf_license_expires', 'qmsbf_activation_id', 'qmsbf_license_fingerprint', 'qmsbf_license_status_cache', 'qmsbf_page_exists_notice', 'qmsbf_json_cache', 'qmsbf_business_data');

