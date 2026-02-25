#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_degree'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_degree'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_degree'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_degree'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_chember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_chember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_chember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_chember'"
