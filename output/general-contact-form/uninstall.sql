-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CF_fields', 'CF_records', 'CF_title', 'CF_On_SendEmail', 'CF_On_MyEmail', 'CF_On_MySubject', 'CF_On_Captcha', 'CF_Captcha_field_length', 'CF_CSS_textbox_size', 'CF_CSS_textarea_size_row', 'CF_CSS_textarea_size_col', '$result->fieldid');

