#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmbd_permalink_old'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'
wp option delete 'cmbd_AddWizardMenu'

# Delete Transients
wp transient delete 'cmbdf_refresh_404_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmbd_purchase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmbd_purchase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmbd_purchase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmbd_purchase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmbd_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmbd_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmbd_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmbd_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmbd_pause_prod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmbd_pause_prod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmbd_pause_prod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmbd_pause_prod'"
