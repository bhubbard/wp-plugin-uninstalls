#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_pocketurl_link_redirection'
wp option delete 'wp_pocketurl_link_collect_data'
wp option delete 'wp_pocketurl_link_prefix'
wp option delete 'wp_pocketurl_link_exclude_cat'
wp option delete 'wp_pocketurl_link_enable_auto'
wp option delete 'wp_pocketurl_link_exclude_word'
wp option delete 'wp_pocketurl_link_require_word'
wp option delete 'rewrite_rules'
wp option delete 'wp_pocketurl_flush_rewrite_rules_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_option_name'"
wp option delete 'wp_pocketurl_link_nofollow'
wp option delete 'wp_pocketurl_link_tracking_code'

# Clear Cron Jobs
wp cron event delete 'wp_poketurlnew_post_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_pocketurl_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_pocketurl_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_pocketurl_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_pocketurl_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_pocketurl_link_custom_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_pocketurl_link_custom_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_pocketurl_link_custom_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_pocketurl_link_custom_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_pocketurl_link_redirection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_pocketurl_link_redirection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_pocketurl_link_redirection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_pocketurl_link_redirection'"
