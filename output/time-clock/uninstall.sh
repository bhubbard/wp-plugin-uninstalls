#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etimeclockwp_firstrun'
wp option delete 'etimeclockwp_install_date'
wp option delete 'etimeclockwp_settings'

# Delete Transients
wp transient delete 'etimeclockwp_activation_notice'
wp transient delete '_etimeclockwp_extensions_feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etimeclockwp_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etimeclockwp_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etimeclockwp_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etimeclockwp_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etimeclockwp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etimeclockwp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etimeclockwp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etimeclockwp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etimeclockwp_pwd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etimeclockwp_pwd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etimeclockwp_pwd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etimeclockwp_pwd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etimeclockwp_wp_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etimeclockwp_wp_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etimeclockwp_wp_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etimeclockwp_wp_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etimeclockwp_meta_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etimeclockwp_meta_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etimeclockwp_meta_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etimeclockwp_meta_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'total_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'total_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'total_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'total_%'"
