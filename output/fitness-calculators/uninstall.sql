-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcw_heading', 'fcw_calculator_type', 'fcw_theme_color', 'fcp_heading', 'fcp_metric_only', 'fcp_theme_color', 'fcbmi_heading', 'fcbmi_metric_only', 'fcbmi_theme_color', 'fcbfc_heading', 'fcbfc_metric_only', 'fcbfc_theme_color', 'fccc_heading', 'fccc_metric_only', 'fccc_theme_color');

