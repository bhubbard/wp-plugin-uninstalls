-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foxnice_coming_soon_status', 'foxnice_coming_soon_text');

