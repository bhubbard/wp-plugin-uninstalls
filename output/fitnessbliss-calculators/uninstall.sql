-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fitnessbliss_hide_c', 'fitnessbliss_heading', 'fcbmi_heading', 'fcbfc_heading', 'fccc_heading', 'fccc_metric_only', 'fccc_theme_color');

