-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CP_MVC_LOAD_SCRIPTS', 'CP_MVC_DATEFORMAT');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

