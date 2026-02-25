#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ec_login_settings'
wp option delete 'deferred_admin_notices'
wp option delete 'ec_main_settings'
wp option delete 'ec_pages_settings'
wp option delete 'ec_design_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'erplyID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'erplyID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'erplyID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'erplyID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'priceWithVat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'priceWithVat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'priceWithVat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'priceWithVat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parameters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parameters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parameters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parameters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'replacementProducts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'replacementProducts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'replacementProducts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'replacementProducts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'relatedProducts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'relatedProducts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'relatedProducts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'relatedProducts'"
