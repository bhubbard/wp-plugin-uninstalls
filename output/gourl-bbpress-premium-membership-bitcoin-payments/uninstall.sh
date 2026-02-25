#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%create_topics'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%create_premium'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkout_page'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%premium_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%premium_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%premium_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%premium_topic'"
