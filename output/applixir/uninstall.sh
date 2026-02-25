#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'applixir_settings'
wp option delete 'applixir_visit_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'applixir_visit_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'applixir_visit_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'applixir_visit_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'applixir_visit_counter'"
