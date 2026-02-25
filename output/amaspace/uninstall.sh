#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amaspace_key_customizer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ama_precompose_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ama_precompose_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ama_precompose_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ama_precompose_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ama_products_with_precompose'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ama_products_with_precompose'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ama_products_with_precompose'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ama_products_with_precompose'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ama_wp_product_parrent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ama_wp_product_parrent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ama_wp_product_parrent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ama_wp_product_parrent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ama_precompose_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ama_precompose_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ama_precompose_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ama_precompose_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amaspace_customizer_show_iframe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amaspace_customizer_show_iframe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amaspace_customizer_show_iframe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amaspace_customizer_show_iframe'"
