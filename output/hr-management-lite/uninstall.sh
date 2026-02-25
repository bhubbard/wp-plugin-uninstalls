#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ehrm_settings_data'
wp option delete 'ehrm_shifts_data'
wp option delete 'ehrm_designations_data'
wp option delete 'ehrm_staffs_data'
wp option delete 'ehrm_events_data'
wp option delete 'ehrm_holidays_data'
wp option delete 'ehrm_notices_data'
wp option delete 'ehrm_projects_data'
wp option delete 'ehrm_email_options_data'
wp option delete 'ehrm_staff_attendence_data'
wp option delete 'ehrm_requests_data'
wp option delete 'ehrm_email_employee_welcome'
wp option delete 'ehrm_email_new_leave_request'
wp option delete 'ehrm_email_approved_leave_request'
wp option delete 'ehrm_email_rejected_leave_request'
wp option delete 'ehrm_email_new_project_assigned'
wp option delete 'ehrm_email_new_task_assigned'
wp option delete 'ehrm_email_new_contact_assigned'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ehrm_email_%'"
wp option delete 'wl_ehrm_setup_wizard'

