#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carbon_custom_sidebars'
wp option delete 'nias_course_endpoint'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_course_data_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_course_data_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_course_data_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_course_data_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usercertificate_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usercertificate_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usercertificate_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usercertificate_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usercertificate_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usercertificate_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usercertificate_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usercertificate_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usercertificate_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usercertificate_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usercertificate_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usercertificate_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'certificate_code_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'certificate_code_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'certificate_code_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'certificate_code_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
