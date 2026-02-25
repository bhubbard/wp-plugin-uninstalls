#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EOS_SW_VERSION'
wp option delete 'eos_themes'

# Delete Transients
wp transient delete 'freesoul-sw-updating-mu'
wp transient delete 'freesoul-sw-notice-fail'
wp transient delete 'freesoul-sw-notice-succ'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_theme_name_replace_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_theme_name_replace_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_theme_name_replace_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_theme_name_replace_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eos_replace_theme_always_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eos_replace_theme_always_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eos_replace_theme_always_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eos_replace_theme_always_key'"
