-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eps_pointers', 'eps_redirects_404_log', '301-redirects-notices', 'eps_redirects_version');
DELETE FROM wp_options WHERE option_name LIKE 'post_type_cache_%';

