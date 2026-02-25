#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'teachable_fild_is_published'
wp option delete 'atsew_license_key'
wp option delete 'atsew_license_expiry_date'
wp option delete 'atsew_license_last_check_date'
wp option delete 'teachable_fild_order_status'
wp option delete 'teachable_fild_teachable_api_key'
wp option delete 'teachable_fild_atsew_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'teachable_course_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'teachable_course_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'teachable_course_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'teachable_course_id_%'"
