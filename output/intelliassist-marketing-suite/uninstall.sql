-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('intelliassist_options', 'intms_cs', 'intelliassist_activation_redirect', 'intms_ck', 'woocommerce_email_from_address', 'intelliassist_flush_rules');

