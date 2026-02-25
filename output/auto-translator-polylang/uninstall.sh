#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atfp_api_key'
wp option delete 'atfp_translate_shortcodes'
wp option delete 'atfp_response_error'
wp option delete 'atfp_translated_entities'
wp option delete 'atfp_translated_taxonomies'
wp option delete 'atfp_translated_single_post'
wp option delete 'atfp_translated_single_term'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atfp_poly_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atfp_poly_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atfp_poly_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atfp_poly_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atfp_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atfp_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atfp_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atfp_reviewed'"
