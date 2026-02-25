#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'writex_ai_save_settings'

# Delete Transients
wp transient delete 'ai_writeX_plugin_data'
wp transient delete 'ai_writex_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smartcontent_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smartcontent_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smartcontent_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smartcontent_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smartcontent_tone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smartcontent_tone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smartcontent_tone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smartcontent_tone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smartcontent_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smartcontent_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smartcontent_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smartcontent_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smartcontent_replace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smartcontent_replace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smartcontent_replace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smartcontent_replace'"
