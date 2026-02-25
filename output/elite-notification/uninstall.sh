#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elite-notification_o_APBD_notification_setting'
wp option delete 'apbd_snlf_nt'
wp option delete 'elite-notification_o_APBD_notification_source'
wp option delete '_appsbd_slnf_sulog'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'health-check-allowed-plugins'

# Delete Transients
wp transient delete '__slnf_load_requrie'

# Clear Cron Jobs
wp cron event delete 'appsbd-slnf-load-source-item'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_public_review_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_public_review_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_public_review_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_public_review_data'"
