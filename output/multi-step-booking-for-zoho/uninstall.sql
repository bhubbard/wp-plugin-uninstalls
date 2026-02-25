-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmsb_thank_you_url', 'wpmsb_api_url', 'wpmsb_thankyou_url', 'wpmsb_slots', 'wpmsb_form_type');

