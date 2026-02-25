-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplefediversecreator_username', 'simplefediversecreator_allow_authors', 'smverification_site_url', 'smverification_allow_authors');

