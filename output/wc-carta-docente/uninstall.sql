-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccd-sandbox', 'wccd-cert-activation', 'wccd-password', 'wccd-categories', 'wccd-image', 'wccd-coupon', 'wccd-orders-on-hold', 'wccd-exclude-shipping', 'wccd-items-check', 'wccd-email-order-received', 'wccd-email-order-failed');

