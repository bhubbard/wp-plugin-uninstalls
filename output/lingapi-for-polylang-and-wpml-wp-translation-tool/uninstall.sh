#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tt_api_key'
wp option delete 'tt_default_post_status'
wp option delete 'turbotranslations_categories_cache'
wp option delete 'turbotranslations_categories_cache_date'
wp option delete 'turbotranslations_pairs_cache'
wp option delete 'turbotranslations_pairs_cache_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turbotranslations_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turbotranslations_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turbotranslations_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turbotranslations_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
