#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmidplus_options'
wp option delete 'pmidplus_rate_notice_dismissed'
wp option delete 'pmidplus_reminder_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pcp_article_sources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pcp_article_sources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pcp_article_sources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pcp_article_sources'"
