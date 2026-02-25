-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vcita_scheduler', 'wpshd_vcita_redirect_needed');

