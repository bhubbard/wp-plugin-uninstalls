-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hidsf_blocked_today', 'hidsf_is_permalink_updated');

