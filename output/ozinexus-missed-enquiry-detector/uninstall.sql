-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ozxmed_contact_page_id', 'ozxmed_contact_page_url', 'ozxmed_last_scan');

