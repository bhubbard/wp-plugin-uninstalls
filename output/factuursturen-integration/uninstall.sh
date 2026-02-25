#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsi_api_woocommerce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fsi_pn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fsi_pn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fsi_pn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fsi_pn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fsi_sent_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fsi_sent_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fsi_sent_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fsi_sent_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fsi_clientnr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fsi_clientnr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fsi_clientnr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fsi_clientnr'"
