#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'iawmlf_archive_api_online'
wp transient delete 'iawmlf_link_count'
wp transient delete 'iawmlf_account_details'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

