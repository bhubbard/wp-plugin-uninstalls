#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'officeguy_plugin_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'officeguy_documentonpayment'
wp cron event delete 'officeguy_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OfficeGuyCompanyID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OfficeGuyCompanyID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OfficeGuyCompanyID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OfficeGuyCompanyID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OfficeGuyAPIKey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OfficeGuyAPIKey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OfficeGuyAPIKey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OfficeGuyAPIKey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OfficeGuyValidCredentials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OfficeGuyValidCredentials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OfficeGuyValidCredentials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OfficeGuyValidCredentials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OfficeGuyDonation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OfficeGuyDonation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OfficeGuyDonation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OfficeGuyDonation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OfficeGuySubscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OfficeGuySubscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OfficeGuySubscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OfficeGuySubscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_duration_in_months'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_duration_in_months'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_duration_in_months'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_duration_in_months'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurrences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurrences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurrences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurrences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
