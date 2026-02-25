#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'food_calorie_options'
wp option delete 'calorie_burning_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activity_factor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activity_factor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activity_factor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activity_factor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmr'"
