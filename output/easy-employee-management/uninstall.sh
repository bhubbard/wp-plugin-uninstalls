#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'employee_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'employee_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'employee_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'employee_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'employee_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'employee_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'employee_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'employee_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'employee_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'employee_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'employee_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'employee_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'employee_contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'employee_contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'employee_contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'employee_contact'"
