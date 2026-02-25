-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_es_remove_recommendations');
DELETE FROM wp_options WHERE option_name LIKE 'wp_es_options_%';

