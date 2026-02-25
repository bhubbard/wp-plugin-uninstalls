-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webappmanifest_content', 'wpswmanager_registrations');
DELETE FROM wp_options WHERE option_name LIKE 'wpservefile_files_%';

