#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_active_modules'
wp option delete 'hcaptcha_settings'
wp option delete 'elementor_safe_mode'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

