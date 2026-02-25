-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CP_BCCF_LOAD_SCRIPTS', 'autoptimize_js_exclude', 'BCCF_RCODE', 'CP_BCCF_JS', 'CP_BCCF_CSS');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_JS';
DELETE FROM wp_options WHERE option_name LIKE '%_CSS';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

