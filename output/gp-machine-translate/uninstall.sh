#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gp_machine_translate_provider'
wp option delete 'gp_machine_translate_key'
wp option delete 'gp_machine_translate_client_id'
wp option delete 'gp_machine_translate_extra_info'
wp option delete 'gp_machine_translate_version'
wp option delete 'gp_google_translate_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gp_machine_translate_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gp_machine_translate_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gp_machine_translate_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gp_machine_translate_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gp_machine_translate_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gp_machine_translate_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gp_machine_translate_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gp_machine_translate_key'"
