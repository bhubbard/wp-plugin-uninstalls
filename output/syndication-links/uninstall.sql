-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('syndication_provider_enable', 'pinboard_token', 'syndication_wp_cron', 'syndication_use_excerpt', 'syndication_backlink', 'autopostToMastodon-instance', 'NS_SNAutoPoster', 'wtt_twitter_username', 'syndication-links_feed', 'syndication-links_bw', 'syndication-links_the_content', 'syndication-links_archives', 'syndication-links_display', 'syndication-links_size', 'syndication-links_text_before', 'syndication_post_types', 'syndication_posse_enable', 'bridgy_bluesky_token', 'bridgy_flickr_token', 'bridgy_github_token', 'bridgy_mastodon_token', 'bridgy_ignoreformatting', 'syndication_links_custom_posse', 'syn_mastodon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('microblog', '_syndication_links_microdotblog', '_syndicate-to', 'syndication_log', 'syndicate-to', 'mastodonAutopostLastSuccessfullPostURL', 'mastodonAutopostLastSuccessfullTootURL', '_wpt_tweet_id', 'autoshare_status', 'mastodon', 'mf2_syndication', 'syndication_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('microblog', '_syndication_links_microdotblog', '_syndicate-to', 'syndication_log', 'syndicate-to', 'mastodonAutopostLastSuccessfullPostURL', 'mastodonAutopostLastSuccessfullTootURL', '_wpt_tweet_id', 'autoshare_status', 'mastodon', 'mf2_syndication', 'syndication_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('microblog', '_syndication_links_microdotblog', '_syndicate-to', 'syndication_log', 'syndicate-to', 'mastodonAutopostLastSuccessfullPostURL', 'mastodonAutopostLastSuccessfullTootURL', '_wpt_tweet_id', 'autoshare_status', 'mastodon', 'mf2_syndication', 'syndication_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('microblog', '_syndication_links_microdotblog', '_syndicate-to', 'syndication_log', 'syndicate-to', 'mastodonAutopostLastSuccessfullPostURL', 'mastodonAutopostLastSuccessfullTootURL', '_wpt_tweet_id', 'autoshare_status', 'mastodon', 'mf2_syndication', 'syndication_urls');

