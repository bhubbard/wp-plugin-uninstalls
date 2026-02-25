#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_podcasting_player_meta_data_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ssp_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transcript_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transcript_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transcript_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transcript_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
