-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloudguard_options', 'cloudguard_blocked_attempts', 'cloudguard_nag');

