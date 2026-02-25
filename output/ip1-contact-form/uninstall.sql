-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip1_contact_form_header', 'ip1_contact_form_submit_text', 'ip1_contact_form_default_properties', 'ip1_contact_form_properties', 'ip1_contact_form_labels_header', 'ip1_contact_form_option_labels', 'ip1_contact_form_token', 'ip1_contact_form_default_labels');

