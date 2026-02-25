-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiks_keyword_swap_choices', 'aiks_keyword_swap_textfield_data', 'aiks_keyword_swap_openai_endpoint_data');

