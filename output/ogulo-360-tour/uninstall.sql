-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ogulo_provider', 'Ogulo_flush');
DELETE FROM wp_options WHERE option_name LIKE 'ogulo_access_redirection_%';

