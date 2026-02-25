-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tandc_headline', 'tandc_description', 'tandc_checkboxtext', 'tandc_style', 'tandc_error');

