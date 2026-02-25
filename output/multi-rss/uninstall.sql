-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('num_feeds_to_show', 'direction', 'multiRss_Header', 'multiRss_ShowOnMobile', 'multi_rss_version');

