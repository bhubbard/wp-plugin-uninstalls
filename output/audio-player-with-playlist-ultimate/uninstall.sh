#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apwpultimate_ultimate_options'
wp option delete 'apwpultimate_ultimate_plugin_version'

# Delete Transients
wp transient delete 'apwpultimate_ultimate_install_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%artist_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%artist_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%artist_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%artist_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%audio_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%audio_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%audio_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%audio_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%duration'"
