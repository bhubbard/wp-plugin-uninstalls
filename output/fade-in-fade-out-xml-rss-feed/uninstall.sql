-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FIFOXMLRSSFEED_FadeWait', 'FIFOXMLRSSFEED_rss_0', 'FIFOXMLRSSFEED_Title', 'FIFOXMLRSSFEED_rss_1', 'FIFOXMLRSSFEED_rss_2', 'FIFOXMLRSSFEED_rss_3');

