#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpt-teacher-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_assignment_dueDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_assignment_dueDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_assignment_dueDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_assignment_dueDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_assignment_docs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_assignment_docs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_assignment_docs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_assignment_docs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpt_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpt_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpt_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpt_event'"
