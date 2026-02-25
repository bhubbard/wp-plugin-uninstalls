#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subscribe2_options'
wp option delete 'mo_dismiss_adnotice'
wp option delete 'embed_autourls'
wp option delete 'widget_s2counter'
wp option delete 'widget_subscribe2widget'
wp option delete 'sidebars_widgets'
wp option delete 'sidebar_widgets'
wp option delete 's2_future_posts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs
wp cron event delete 's2_digest_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_s2mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_s2mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_s2mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_s2mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_comment_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_comment_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_comment_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_comment_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_s2_digest_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_s2_digest_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_s2_digest_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_s2_digest_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's2_autosub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's2_autosub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's2_autosub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's2_autosub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 's2_cat%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 's2_cat%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 's2_cat%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 's2_cat%'"
