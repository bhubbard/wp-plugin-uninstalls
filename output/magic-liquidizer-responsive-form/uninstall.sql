-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liquidizer_lite_wp_form', 'liquidizer_lite_wp_which_form_element', 'liquidizer_lite_wp_form_width');

