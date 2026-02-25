-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcp_wordcount', 'wcp_charactercount', 'wcp_readtime', 'wcp_headline', 'wcp_location');

