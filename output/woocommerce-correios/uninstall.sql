-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_correios_autofill_addresses_db_version', 'woocommerce_correios_version', 'woocommerce_email_footer_text', 'correios-cwsstaging-token', 'correios-cwsproduction-token', 'correios-cws-staging-token', 'correios-cws-production-token');

