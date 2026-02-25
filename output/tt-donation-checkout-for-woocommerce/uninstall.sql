-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donation_tip_checkout_enabled', 'donation_tip_checkout_message', 'donation_tip_checkout_button', 'donation_tip_checkout_label', 'donation_tip_checkout_default_amount', 'donation_tip_checkout_min_amount', 'donation_tip_checkout_taxable', 'donation_tip_checkout_minorder');

