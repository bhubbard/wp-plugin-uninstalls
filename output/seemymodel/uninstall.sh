#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seemymodel_options_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_seemymodel_armodel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_seemymodel_armodel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_seemymodel_armodel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_seemymodel_armodel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_seemymodel_3d_viewer_embed_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_seemymodel_3d_viewer_embed_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_seemymodel_3d_viewer_embed_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_seemymodel_3d_viewer_embed_tag'"
