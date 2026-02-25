#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dd_cf7_mailing_lists'
wp option delete 'cf7_ctct_settings'
wp option delete 'cf7_ctct_extra_settings'
wp option delete 'dd_cf7_optin_email_settings'

# Delete Transients
wp transient delete 'ctct_to_process'

# Clear Cron Jobs
wp cron event delete 'dd_do_retry_failed_ctct_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_cf7'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_cf7'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_cf7'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_cf7'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dd-ctct-cf7-notice-counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dd-ctct-cf7-notice-counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dd-ctct-cf7-notice-counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dd-ctct-cf7-notice-counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctct_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctct_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctct_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctct_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_country'"
