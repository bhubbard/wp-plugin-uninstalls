-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpts_options', 'codepeople_theme_switch_registered');
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_theme_switch_theme_%';

