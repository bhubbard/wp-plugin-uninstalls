-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opalmedical_settings', 'elementor_cpt_support', 'opalmedical_version', 'opalmedical_version_upgraded_from', 'opalmedical_setup', '_opalmedical_installed', '_opalmedical_activation_redirect');

