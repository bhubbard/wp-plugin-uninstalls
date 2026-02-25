#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_payamito_options'
wp option delete 'payamito_core_version'
wp option delete 'kianfr_demo_mode'
wp option delete 'payamito'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'payamito_edd_installing'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'payamito_remove_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = ' edd_payamito_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = ' edd_payamito_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = ' edd_payamito_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = ' edd_payamito_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_payamito_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_payamito_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_payamito_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_payamito_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_kianfr_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_kianfr_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_kianfr_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kianfr_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
