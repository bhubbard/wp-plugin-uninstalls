#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llegoya_envios_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ly_deposito_%' OR option_name LIKE '_site_transient_ly_deposito_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llegoya_modo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llegoya_modo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llegoya_modo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llegoya_modo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llegoya_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llegoya_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llegoya_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llegoya_sent'"
