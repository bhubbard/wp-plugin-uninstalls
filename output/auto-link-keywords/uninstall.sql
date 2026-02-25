-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autolinkkw_keyword_map', 'autolinkkw_max_links', 'autolinkkw_nofollow', 'autolinkkw_newtab');

