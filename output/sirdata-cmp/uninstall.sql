-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('STCMP_custom_consent_partner_id', 'STCMP_custom_consent_config_id', 'STCMP_custom_consent_email', 'STCMP_custom_consent_domain', 'STCMP_custom_consent_url', 'STCMP_custom_consent_accept_cgv', 'STCMP_error_api');

