-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpklikandpay_store_mainoption', 'wpklikandpay_store_urloption', 'wpklikandpay_db_option', 'storeTpe', 'environnement');

