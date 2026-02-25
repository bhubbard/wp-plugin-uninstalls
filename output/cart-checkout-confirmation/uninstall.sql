-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('license_checkout_confirm', 'check_confirm_page_fields_setting', 'confirm_on_off_text_bill', 'check_confirm_page_option', 'check_confirm_page_additional');

