-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsll_logo_url', 'rsll_logo_dimensions', 'rsll_settings', 'rsll_version');

