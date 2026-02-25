-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iq_fulfillment_activated', 'iq_fulfillment_installed', 'iq_fulfillment_version');

