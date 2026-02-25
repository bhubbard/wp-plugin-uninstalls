-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activity_log_db_version', 'elementor_site_mailer_campaign', 'elementor_image_optimization_campaign');

