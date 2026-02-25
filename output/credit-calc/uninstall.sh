#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'credit_calc'
wp option delete 'credit_calc_rate'
wp option delete 'loan_calculator_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monthly_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monthly_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monthly_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monthly_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date'"
