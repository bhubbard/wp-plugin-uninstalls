#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsm_acc_r_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Accordion_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Accordion_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Accordion_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Accordion_Settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_accordion_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_accordion_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_accordion_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_accordion_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_accordion_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_accordion_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_accordion_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_accordion_count'"
