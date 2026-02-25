-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guardian_headlines_sections', 'guardian_headlines_version', 'guardian_headlines_notified');

