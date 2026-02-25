#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yzen_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yzcategory_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yzcategory_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yzcategory_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yzcategory_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yzrating_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yzrating_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yzrating_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yzrating_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yztypearticle_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yztypearticle_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yztypearticle_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yztypearticle_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yztypeplatform_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yztypeplatform_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yztypeplatform_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yztypeplatform_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yzindex_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yzindex_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yzindex_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yzindex_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yzrssenabled_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yzrssenabled_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yzrssenabled_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yzrssenabled_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
