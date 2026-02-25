-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dryleads_flow_id', 'dryleads_enable_widget', 'dryleads_contact_form_7', 'dryleads_city');

