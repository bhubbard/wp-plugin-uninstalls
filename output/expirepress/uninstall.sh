#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'expired_post_logs'
wp option delete 'expp_post_cron_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_post_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_post_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_post_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_post_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'new_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'new_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'new_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'new_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'new_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'new_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'new_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'new_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_hidden_from_sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_hidden_from_sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_hidden_from_sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_hidden_from_sitemap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_hidden_from_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_hidden_from_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_hidden_from_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_hidden_from_search'"
