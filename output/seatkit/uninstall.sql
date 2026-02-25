-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seatkit_currency_symbol', 'seatkit_company_name', 'seatkit_delete_on_uninstall', 'seatkit_admin_email_from', 'seatkit_payment_mode', 'seatkit_enabled_gateways', 'seatkit_default_gateway', 'seatkit_razorpay_key', 'seatkit_razorpay_secret', 'seatkit_stripe_publishable', 'seatkit_stripe_secret', 'seatkit_cancel_hours', 'seatkit_refund_deduction', 'seatkit_ticket_company', 'seatkit_ticket_footer', 'seatkit_reservation_expiry', 'seatkit_reservation_percent', 'sk_ticket_footer', 'sk_ticket_color', 'sk_ticket_company', 'seatkit_version', 'seatkit_lock_expiry_minutes');
DELETE FROM wp_options WHERE option_name LIKE 'seatkit_cancel_otp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seatkit_otp', '_seatkit_otp_expiry', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seatkit_otp', '_seatkit_otp_expiry', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seatkit_otp', '_seatkit_otp_expiry', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seatkit_otp', '_seatkit_otp_expiry', 'billing_phone');

