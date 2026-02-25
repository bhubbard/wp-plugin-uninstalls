-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CP_CFPP_LOAD_SCRIPTS', 'CP_CFPP_LOAD_SCRIPTS_ADMIN', 'autoptimize_js_exclude', 'CP_PPPRO_JS', 'CP_PPPRO_CSS');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_JS';
DELETE FROM wp_options WHERE option_name LIKE '%_CSS';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

