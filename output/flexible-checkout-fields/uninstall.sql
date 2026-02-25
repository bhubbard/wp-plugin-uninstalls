-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inspire_checkout_fields_css_disable', 'api_flexible-checkout-fields-pro_activated', 'inspire_checkout_fields_section_settings', 'wpdesk_helper_options', 'wpdesk_tracker_skip_flexible_checkout_fields', 'wpdesk_tracker_notice', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'inspire_checkout_fields_%';

