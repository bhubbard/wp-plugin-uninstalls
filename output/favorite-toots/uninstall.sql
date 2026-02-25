-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdevroe_tootfaves_instance_url', 'cdevroe_tootfaves_access_token');
DELETE FROM wp_options WHERE option_name LIKE 'cdevroe_tootfaves_cache_%';

