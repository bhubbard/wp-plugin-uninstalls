#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solea_central_member_management'
wp option delete 'solea_icon_children'
wp option delete 'solea_icon_adults'
wp option delete 'solea_registration_order_url'
wp option delete 'solea_account_owner'
wp option delete 'solea_account_iban'
wp option delete 'solea_last_version'
wp option delete 'page_used_for_state'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_solea-rest-api-nonce-user%' OR option_name LIKE '_site_transient_solea-rest-api-nonce-user%'"

# Clear Cron Jobs
wp cron event delete 'solea/daily/maintenance'
wp cron event delete 'solea/daily/informmangement'
wp cron event delete 'solea/sunday/information'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'localgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'localgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'localgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'localgroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'housenumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'housenumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'housenumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'housenumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allergies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allergies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allergies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allergies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intolerances'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intolerances'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intolerances'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intolerances'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'medication'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'medication'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'medication'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'medication'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solea_nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solea_nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solea_nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solea_nickname'"
