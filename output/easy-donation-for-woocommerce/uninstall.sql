-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edfw_donation_position', 'edfw_donation_label_text', 'edfw_donation_button_text', 'edfw_donation_button_color', 'edfw_donation_button_text_color', 'edfw_donation_note');

