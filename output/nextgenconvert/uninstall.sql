-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nextgenconvert_api_key', 'nextgenconvert_quality');

