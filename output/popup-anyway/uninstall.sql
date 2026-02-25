-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('obi_popup_anyway_url', 'obi_popup_anyway_time', 'obi_popup_anyway_cookie');

