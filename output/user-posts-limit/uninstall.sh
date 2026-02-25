#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'upl_rules_count'
wp option delete 'upl_message'
wp option delete 'upl_notice'
wp option delete 'upl_priority'
wp option delete 'upl_manage_cap'
wp option delete 'upl_user_role'
wp option delete 'upl_posts_type'
wp option delete 'upl_num_limit'
wp option delete 'upl_period'
wp option delete 'add_new_users'
wp option delete 'upl_site_rules_count'
wp option delete 'upl_site_user_role'
wp option delete 'upl_site_posts_type'
wp option delete 'upl_site_num_limit'
wp option delete 'upl_site_period'

