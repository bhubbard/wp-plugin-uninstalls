-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('answerx_api_key', 'answerx_company_info', 'answerx_widget_show', 'answerx_company_id', 'answerx_installed', 'answerx_version');

