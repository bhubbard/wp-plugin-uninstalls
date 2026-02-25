#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usa_vc_lite_install_date'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

