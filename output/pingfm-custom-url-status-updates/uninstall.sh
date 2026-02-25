#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pingfm_db_version'
wp option delete 'pingfm_force_posts'
wp option delete 'pingfm_generate_token'
wp option delete 'pingfm_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'previous_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'previous_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'previous_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'previous_id'"
