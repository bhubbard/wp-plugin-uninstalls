#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syndication_provider_enable'
wp option delete 'pinboard_token'
wp option delete 'syndication_wp_cron'
wp option delete 'syndication_use_excerpt'
wp option delete 'syndication_backlink'
wp option delete 'autopostToMastodon-instance'
wp option delete 'NS_SNAutoPoster'
wp option delete 'wtt_twitter_username'
wp option delete 'syndication-links_feed'
wp option delete 'syndication-links_bw'
wp option delete 'syndication-links_the_content'
wp option delete 'syndication-links_archives'
wp option delete 'syndication-links_display'
wp option delete 'syndication-links_size'
wp option delete 'syndication-links_text_before'
wp option delete 'syndication_post_types'
wp option delete 'syndication_posse_enable'
wp option delete 'bridgy_bluesky_token'
wp option delete 'bridgy_flickr_token'
wp option delete 'bridgy_github_token'
wp option delete 'bridgy_mastodon_token'
wp option delete 'bridgy_ignoreformatting'
wp option delete 'syndication_links_custom_posse'

# Delete Transients
wp transient delete 'syn_mastodon'

# Clear Cron Jobs
wp cron event delete 'microdotblog_get_ids'
wp cron event delete 'syn_syndication'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'microblog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'microblog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'microblog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'microblog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syndication_links_microdotblog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syndication_links_microdotblog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syndication_links_microdotblog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syndication_links_microdotblog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syndicate-to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syndicate-to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syndicate-to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syndicate-to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syndication_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syndication_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syndication_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syndication_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syndicate-to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syndicate-to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syndicate-to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syndicate-to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastodonAutopostLastSuccessfullPostURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastodonAutopostLastSuccessfullPostURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastodonAutopostLastSuccessfullPostURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastodonAutopostLastSuccessfullPostURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastodonAutopostLastSuccessfullTootURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastodonAutopostLastSuccessfullTootURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastodonAutopostLastSuccessfullTootURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastodonAutopostLastSuccessfullTootURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_tweet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoshare_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoshare_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoshare_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoshare_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mastodon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mastodon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mastodon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mastodon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_syndication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_syndication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_syndication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_syndication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syndication_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syndication_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syndication_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syndication_urls'"
