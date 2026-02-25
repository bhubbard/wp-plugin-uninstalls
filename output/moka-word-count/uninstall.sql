-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moka_wcp_wordcount', 'moka_wcp_charactercount', 'moka_wcp_readtime', 'moka_wcp_headline', 'moka_wcp_location');

