#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zeno_chatbot_database_version'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

