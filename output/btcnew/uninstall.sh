#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'btcnew_connect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'btcnew_comment_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'btcnew_comment_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'btcnew_comment_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'btcnew_comment_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'btcnew_comment_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'btcnew_comment_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'btcnew_comment_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'btcnew_comment_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'btcnew_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'btcnew_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'btcnew_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'btcnew_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'btcnew_own_blog_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'btcnew_own_blog_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'btcnew_own_blog_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'btcnew_own_blog_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'btcnew_retweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'btcnew_retweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'btcnew_retweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'btcnew_retweet'"
