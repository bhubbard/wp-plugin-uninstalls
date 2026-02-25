-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visitor_contact_form_id', 'visitor_contact_sticky_button', 'visitor_contact_publish_page', 'visitor_contact_page_id');

