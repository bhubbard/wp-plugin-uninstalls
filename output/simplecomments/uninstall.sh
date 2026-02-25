#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_display_avatars'
wp option delete 'sm_user_delete'
wp option delete 'sm_user_edit'
wp option delete 'sm_enable_report'

