-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('i13_simple_donations_values', 'i13_simple_donations_settings', 'i13_woo_simple_donation_multisite_activated', 'i13_woo_sd_messages', 'i13_simple_donations_msg_settings', 'active_sitewide_plugins');

