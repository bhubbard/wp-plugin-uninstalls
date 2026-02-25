-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aditum_antifraude_id', 'aditum_antifraude_type', 'woocommerce_pay_page_id', 'woocommerce_thanks_page_id');

