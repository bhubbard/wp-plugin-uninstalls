#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'human_resources_department'
wp option delete 'hrm_deferred_admin_notices'
wp option delete 'hrm_version'
wp option delete 'other_hrms'
wp option delete 'hrm_daily'
wp option delete 'remote_logging_option'
wp option delete 'hrm_box_removed'
wp option delete 'logoff_logging_option'
wp option delete 'auto_logoff_option'
wp option delete 'post_measure_logging_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'in_office'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'in_office'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'in_office'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'in_office'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Arbeitszeitbeginn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Arbeitszeitbeginn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Arbeitszeitbeginn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Arbeitszeitbeginn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Pausenkonto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Pausenkonto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Pausenkonto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Pausenkonto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_time_spend_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_time_spend_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_time_spend_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_time_spend_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_ill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_ill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_ill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_ill'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_ill_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_ill_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_ill_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_ill_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Arbeitszeitbeginn_readable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Arbeitszeitbeginn_readable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Arbeitszeitbeginn_readable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Arbeitszeitbeginn_readable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'in_pause'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'in_pause'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'in_pause'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'in_pause'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Pausenbeginn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Pausenbeginn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Pausenbeginn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Pausenbeginn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Pausenbeginn_readable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Pausenbeginn_readable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Pausenbeginn_readable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Pausenbeginn_readable'"
