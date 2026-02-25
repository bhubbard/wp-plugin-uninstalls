-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CjB-NumDelim', 'CjB-GoogleAPIKey', 'CjB-DelimStart_1', 'CjB-DelimEnd_1', 'CjB-DelimSite_1', 'PrivateRSSFeedLocation');

