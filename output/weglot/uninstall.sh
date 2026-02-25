#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weglot_version'
wp option delete 'weglot_old_permalink_structure'
wp option delete 'woocommerce_myaccount_lost_password_endpoint'
wp option delete 'weglot_instawp'

# Delete Transients
wp transient delete 'weglot_php_version_notice'
wp transient delete 'weglot_cache_cdn'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_weglot_idem_%' OR option_name LIKE '_site_transient_weglot_idem_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_weglot_sig_%' OR option_name LIKE '_site_transient_weglot_sig_%'"
wp transient delete 'weglot_slugs_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weglot_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weglot_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weglot_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weglot_language'"
