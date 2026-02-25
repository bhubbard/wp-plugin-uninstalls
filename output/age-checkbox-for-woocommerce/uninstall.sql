-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_betawooage_checkbox', 'woocommerce_betawooage_multilanguage', 'woocommerce_betawooage_checkboxemessage', 'woocommerce_betawooage_failuremessage');

