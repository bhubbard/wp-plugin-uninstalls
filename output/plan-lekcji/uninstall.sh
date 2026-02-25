#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'planle_schedule_disabled_option'
wp option delete 'planle_show_schedule_for_logged_in_option'
wp option delete 'planle_schedule_mode_option'
wp option delete 'planle_allow_logged_in_users_test_schedule'
wp option delete 'planle_show_feedback_link_only_option'
wp option delete 'planle_contact_page_option'
wp option delete 'planle_generator_option'
wp option delete 'planle_roles_with_access_to_test_plan'
wp option delete 'planle_test_schedule_valid_date_option'
wp option delete 'planle_schedule_valid_date_option'
wp option delete 'planle_loaded_image_file_id'
wp option delete 'planle_plan_mode_option'
wp option delete 'planle_plan_views'
wp option delete 'planle_roles_with_access_to_test_schedule'

# Delete Transients
wp transient delete 'planle_notice'

