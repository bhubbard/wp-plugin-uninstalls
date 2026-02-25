-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zlfms_aig_install_time', 'zlfms_aig_review_status', 'zlfms_aig_review_dismissed_until');

