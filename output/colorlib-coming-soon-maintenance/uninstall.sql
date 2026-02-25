-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccsm_settings', 'ccsm_ga_notice', 'ccsm_review');

