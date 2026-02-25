-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailpoet_wp_ecommerce_subscribe_too', 'mailpoet_enable_checkout', 'mailpoet_checkout_label', 'mailpoet_wp_ecommerce_active');

