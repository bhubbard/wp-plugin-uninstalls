-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tb_via', 'tb_hashtag', 'tb_lang', 'tb_related', 'tb_related_accounts', 'tb_style', 'tb_where', 'tb_display_page', 'tb_display_front', 'tb_display_rss', 'tb_rss_where', 'tb_ping');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tb_related', 'TweetButton');
DELETE FROM wp_usermeta WHERE meta_key IN ('tb_related', 'TweetButton');
DELETE FROM wp_termmeta WHERE meta_key IN ('tb_related', 'TweetButton');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tb_related', 'TweetButton');

