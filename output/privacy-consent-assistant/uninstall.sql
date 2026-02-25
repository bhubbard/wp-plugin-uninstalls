-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trm_gdpr_overwrite_notice_form_consent', 'trm_gdpr_default_notice_form_consent', 'trm_gdpr_overwrite_notice_consent_bar', 'trm_gdpr_default_notice_consent_bar', 'trm_gdpr_close_consent_functions', 'trm_gdpr_dynamic_style', '__trm_gdpr_version', 'trm_gdpr_disable_hide_existing_links', 'trm_gdpr_disable_form_consent', 'trm_gdpr_disable_consent_bar', 'trm_gdpr_disable_subfooter', 'trm_gdpr_governing_state', 'trm_gdpr_governing_country', 'trm_gdpr_company_name', 'trm_gdpr_company_address', 'trm_gdpr_company_phone', 'trm_gdpr_company_email');
DELETE FROM wp_options WHERE option_name LIKE '__cached_svn_%';

