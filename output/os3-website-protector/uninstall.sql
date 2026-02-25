-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('os3_protector_themes', 'os3_protector_plugins', 'os3_protector_uploads');

