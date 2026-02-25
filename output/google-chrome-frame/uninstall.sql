-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google-chrome-meta', 'google-chrome-javascript', 'google-chrome-version');

