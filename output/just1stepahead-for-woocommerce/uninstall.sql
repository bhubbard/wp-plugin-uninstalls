-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('j1sa-username', 'j1sa-password', 'j1sa-sender-id', 'j1sa-sender-display', 'j1sa-recipient', 'j1sa-wcs-template-ocs', 'j1sa-woocommerce_balance');
DELETE FROM wp_options WHERE option_name LIKE 'j1sa-wcs-template-%';

