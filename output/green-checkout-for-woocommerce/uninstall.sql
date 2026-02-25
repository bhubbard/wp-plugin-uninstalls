-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpaks_gcfw_amount', 'wpaks_gcfw_label_text', 'wpaks_gcfw_donation_link');

