-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pti_account_name', 'pti_api_key', 'pti_field_value', 'form_bgcolor', 'submitbtn_text', 'submitbtn_color', 'submitbtn_bgcolor', 'submitbtn_bghovercolor', 'logo-option', 'form_heading', 'message_box');

