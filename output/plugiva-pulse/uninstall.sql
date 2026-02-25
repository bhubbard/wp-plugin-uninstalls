-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppls_pulses', 'ppls_cleanup_on_uninstall');

