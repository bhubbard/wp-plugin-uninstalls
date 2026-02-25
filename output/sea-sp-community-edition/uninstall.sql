-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Blue_Triangle_Automated_CSP_Free_Directives', 'Blue_Triangle_Automated_CSP_Free_Directive_Options', 'Blue_Triangle_Automated_CSP_Free_Errors', 'Blue_Triangle_Automated_CSP_Free_Report_Mode', 'Blue_Triangle_Automated_CSP_Free_CSP', 'Blue_Triangle_Automated_CSP_Free_Version');

