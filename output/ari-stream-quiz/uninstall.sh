#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ari_stream_quiz_settings'
wp option delete 'ari_stream_quiz_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
