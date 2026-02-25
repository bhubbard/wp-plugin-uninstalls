#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirection_lookup'
wp option delete 'redirection_post'
wp option delete 'redirection_root'
wp option delete 'redirection_index'
wp option delete 'redirection_options'
wp option delete 'rss_language'
wp option delete 'prli_db_version'
wp option delete 'quickppr_redirects'
wp option delete '301_redirects'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirection_log_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirection_log_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirection_log_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirection_log_per_page'"
