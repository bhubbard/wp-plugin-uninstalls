#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ela_content_terminal_accepted_terms'
wp option delete 'ela_content_terminal_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rss_pi_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rss_pi_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rss_pi_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rss_pi_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_canonical'"
