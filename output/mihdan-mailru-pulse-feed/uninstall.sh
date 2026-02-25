#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flush_rewrite_rules'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wptrt_notice_dismissed_mihdan-mailru-pulse-feed'
wp option delete 'mihdan_mailru_pulse_feed_review_dismissed'
wp option delete 'feed'
wp option delete 'source'
wp option delete 'widget'
wp option delete 'contacts'
wp option delete 'mihdan_mailru_pulse_feed_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_kill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_kill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_kill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_kill'"
