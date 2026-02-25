-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('people_also_asked_version', 'people_also_display-view-more', 'people_also_display-request-removal');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

