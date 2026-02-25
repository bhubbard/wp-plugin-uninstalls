#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-enabled'"
wp option delete 'ihc_levels'
wp option delete 'ihc_general_login_default_page'
wp option delete 'ihc_general_user_page'
wp option delete 'ihc_general_lost_pass_page'
wp option delete 'ihc_general_register_default_page'
wp option delete 'ihc_subscription_plan_page'

