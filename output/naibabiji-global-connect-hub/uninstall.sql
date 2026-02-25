-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('naibabiji_gch_contacts', 'naibabiji_gch_settings');

