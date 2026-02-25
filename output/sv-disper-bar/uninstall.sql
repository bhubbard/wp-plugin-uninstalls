-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sv-disper-bar-settings', 'sv-disper-bar-points', 'sv-disper-bar-style');

