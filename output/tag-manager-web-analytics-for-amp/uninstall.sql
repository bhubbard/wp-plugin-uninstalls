-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtm_ga_amp_ga', 'gtm_ga_amp_gtm');

