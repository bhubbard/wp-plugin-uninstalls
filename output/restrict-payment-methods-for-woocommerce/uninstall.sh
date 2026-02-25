#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmwrpm_enable'
wp option delete 'gmwrpm_hide_unpurchase'
wp option delete 'gmwrpm_layout'
wp option delete 'gmwrpm_showchoose'
wp option delete 'gmwrpm_showimg'
wp option delete 'gmwrpm_showdesc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwrpm_condintal_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwrpm_condintal_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwrpm_condintal_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwrpm_condintal_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwrpm_payment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwrpm_payment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwrpm_payment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwrpm_payment_data'"
