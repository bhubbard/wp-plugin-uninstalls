#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hostinger_woo_onboarding_choice'
wp option delete 'hostinger_reseller'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hostinger_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'hostinger_hide_subpages'

# Delete Transients
wp transient delete 'hostinger_newest_wordpress_version'
wp transient delete 'hostinger_is_eligible_www_redirect'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

