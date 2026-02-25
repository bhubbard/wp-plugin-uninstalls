#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w2pshop_do_activation_redirect'
wp option delete 'w2pshop_data_presets_handler_db_version'
wp option delete 'w2pshop_saved_designs_rewrite_flushed'
wp option delete 'w2pshop_saved_data_handler_db_version'
wp option delete 'w2pshop_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2pshop_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2pshop_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2pshop_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2pshop_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_udraw_apparel_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_udraw_apparel_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_udraw_apparel_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_udraw_apparel_product'"
