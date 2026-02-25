-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd-template-status', 'edd-template-style', 'edd-template-checkout-page', 'edd-template-receipt-page', 'edd-template-confirmation-page', 'edd-template-purchase-confirmation-page', 'edd-template-download-history-page', 'edd-template-purchase-history-page');

