#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailchimp_registration'
wp option delete 'registration_terms'
wp option delete 'registration_terms_dialog_title'
wp option delete 'mailchimp_apikey'
wp option delete 'mailchimp_listid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_extension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_extension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_extension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_extension'"
