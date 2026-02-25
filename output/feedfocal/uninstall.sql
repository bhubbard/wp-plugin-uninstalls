-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedfocal_activation_redirect', 'feedfocal_survey_code');

