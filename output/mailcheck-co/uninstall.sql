-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailcheckco_trust_rate', 'mailcheckco_enable_core', 'mailcheckco_enable_acf', 'mailcheckco_enable_cf7', 'mailcheckco_enable_woo', 'mailcheckco_enable_elementor', 'mailcheckco_enable_mailpoet', 'mailcheckco_hash', 'mailcheckco_message', 'mailcheckco_api_error');

