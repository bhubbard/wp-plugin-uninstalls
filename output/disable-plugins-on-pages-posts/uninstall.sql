-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bestwp_plo_options', 'bestwp-plo-notice-fail');

