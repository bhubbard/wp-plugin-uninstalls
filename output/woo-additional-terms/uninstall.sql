-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_woo_additional_terms_page_id', '_woo_additional_terms_notice', '_woo_additional_terms_error', 'woo_additional_terms_onboarding', 'woo_additional_terms_rated', 'woo_additional_terms_activation_timestamp', 'woo_additional_terms_options', 'active_sitewide_plugins');

