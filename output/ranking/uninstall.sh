#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'text_example'
wp option delete 'ranking_post_token'
wp option delete 'gcreate_ranking_post_website'
wp option delete 'gcreate_ranking_post_website_api'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_user_id'"

