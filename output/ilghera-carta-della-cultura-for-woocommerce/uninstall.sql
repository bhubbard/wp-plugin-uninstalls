-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccdc-sandbox', 'wccdc-cert-activation', 'wccdc-password', 'wccdc-categories', 'wccdc-image', 'wccdc-premium-key', 'wccdc-coupon', 'wccdc-items-check', 'wccdc-orders-on-hold', 'wccdc-exclude-shipping', 'wccdc-email-order-received', 'wccdc-email-subject', 'wccdc-email-heading', 'wccdc-email-order-failed');

