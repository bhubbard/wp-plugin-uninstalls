-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('puipui_dbgt_form_option_library', 'puipui_dbgt_form_option_apikey', 'puipui_dbgt_form_option_safesearch', 'puipui_dbgt_form_option_apijeton', 'puipui_dbgt_form_option_powered', 'puipui_dbgt_form_option_imagesize', 'puipui_dbgt_form_option_legal', 'puipui_dbgt_form_option_cachingtime', 'dbgt_puipui_form_option_cachingtime');

