#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qeseo_to_%'"
wp option delete 'quick-and-easy-seo'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qeseo_title_tag_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qeseo_title_tag_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qeseo_title_tag_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qeseo_title_tag_meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qeseo_metades_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qeseo_metades_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qeseo_metades_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qeseo_metades_meta_value'"
