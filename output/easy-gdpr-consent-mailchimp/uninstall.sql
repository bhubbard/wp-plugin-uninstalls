-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('egcf_should_geolocate', 'egcf_geoip_database');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cl_uid', '_cl_cid', '_cl_data', 'egcf_geolocate', 'egcf_eu_field', 'egcf_checkboxes', 'egcf_heading', 'egcf_message', 'egcf_message_lower', 'egcf_submit_label', 'egcf_cancel_label', 'egcf_process_label', 'egcf_selector', 'egcf_email_field', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cl_uid', '_cl_cid', '_cl_data', 'egcf_geolocate', 'egcf_eu_field', 'egcf_checkboxes', 'egcf_heading', 'egcf_message', 'egcf_message_lower', 'egcf_submit_label', 'egcf_cancel_label', 'egcf_process_label', 'egcf_selector', 'egcf_email_field', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cl_uid', '_cl_cid', '_cl_data', 'egcf_geolocate', 'egcf_eu_field', 'egcf_checkboxes', 'egcf_heading', 'egcf_message', 'egcf_message_lower', 'egcf_submit_label', 'egcf_cancel_label', 'egcf_process_label', 'egcf_selector', 'egcf_email_field', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cl_uid', '_cl_cid', '_cl_data', 'egcf_geolocate', 'egcf_eu_field', 'egcf_checkboxes', 'egcf_heading', 'egcf_message', 'egcf_message_lower', 'egcf_submit_label', 'egcf_cancel_label', 'egcf_process_label', 'egcf_selector', 'egcf_email_field', '_wp_page_template');

