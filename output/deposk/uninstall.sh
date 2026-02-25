#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_okto-depo-order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_okto-depo-order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_okto-depo-order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_okto-depo-order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_okto-depo-address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_okto-depo-address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_okto-depo-address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_okto-depo-address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_depo_pickup_from_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_depo_pickup_from_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_depo_pickup_from_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_depo_pickup_from_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_depo_18years_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_depo_18years_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_depo_18years_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_depo_18years_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_depo_cod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_depo_cod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_depo_cod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_depo_cod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_okto-depo-deliver-to-address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_okto-depo-deliver-to-address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_okto-depo-deliver-to-address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_okto-depo-deliver-to-address'"
