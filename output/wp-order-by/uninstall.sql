-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpob-exclude-posts', 'wpob-options-');
DELETE FROM wp_options WHERE option_name LIKE 'wpob-options-%';

