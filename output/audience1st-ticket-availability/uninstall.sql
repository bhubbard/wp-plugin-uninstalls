-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('audience1st_ticket_rss_num_shows', 'audience1st_ticket_rss_version', 'audience1st_ticket_rss_url');

