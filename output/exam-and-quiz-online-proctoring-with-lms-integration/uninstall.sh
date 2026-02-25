#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_procto_select_lms'
wp option delete 'mo_procto_disable_mouse_right_click'
wp option delete 'mo_enable_proctoring'
wp option delete 'mo_procto_restrict_tab_switch'
wp option delete 'mo_procto_restrict_inspect_browser'
wp option delete 'mo_enable_live_video'
wp option delete 'mo_procto_selected_quizzes'
wp option delete 'mo_procto_restrict_session'
wp option delete 'mo_procto_max_limit_action'
wp option delete 'mo_procto_activated_time'
wp option delete 'email'
wp option delete 'mo_procto_admin_phone'
wp option delete 'mo_procto_current_plugin_version'

