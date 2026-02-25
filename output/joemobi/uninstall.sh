#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'joemobi_api_controllers'
wp option delete 'joemobi_api_base'
wp option delete 'joemobi_api_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsq_thread_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsq_thread_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsq_thread_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsq_thread_id'"
