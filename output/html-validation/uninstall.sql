-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('html_validation_completed_scan', 'html_validation_cron_frequency', 'html_validation_error_types', 'html_validation_version', 'html_validation_terms', 'html_validation_posttypes', 'html_validation_scan_themes', 'html_validation_errors_per_page', 'html_validation_external_sources');

