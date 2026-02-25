-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pstwc_displayLocation', 'pstwc_wordCount', 'pstwc_characterCount', 'pstwc_readTime', 'pstwc_headlineText');

