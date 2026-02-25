#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tcmt_language_switcher_options'
wp option delete 'tcmt_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tcmt_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tcmt_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tcmt_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tcmt_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tcmt_original_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tcmt_original_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tcmt_original_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tcmt_original_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tcmt_translated_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tcmt_translated_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tcmt_translated_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tcmt_translated_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tcmt_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tcmt_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tcmt_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tcmt_lang'"
