-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buymecoffee_payment_settings_paypal', 'buymecoffee_payment_settings_stripe', 'buymecoffee_payment_setting');
DELETE FROM wp_options WHERE option_name LIKE 'buymecoffee_payment_settings_%';

