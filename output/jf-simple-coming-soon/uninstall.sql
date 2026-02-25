-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jf_scs_delete_options', 'jf_scs_enable', 'jf_scs_content_field', 'jf_scs_use_custom_css', 'jf_scs_custom_css_field', 'jf_scs_title_field', 'jf_scs_bgcolor_field', 'jf_scs_textcolor_field', 'jf_scs_topmargin_field');

