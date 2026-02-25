-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('INLPLN_ACTIVATED', 'INLPLN_DISMISS');

