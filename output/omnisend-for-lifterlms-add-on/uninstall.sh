#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lifterlms_initial_sync_made'
wp option delete 'omnisend_lifterlms_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_billing_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_billing_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_billing_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_billing_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_phone'"
