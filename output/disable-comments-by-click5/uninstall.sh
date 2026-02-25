#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'click5_disable_comments_display_rpc'
wp option delete 'click5_disable_comments_display_api'
wp option delete 'click5_disable_comments_display_globally'
wp option delete 'click5_disable_comments_force_autoupdate'
wp option delete 'click5_disable_comments_activation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_authentication_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_display_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_use_custom_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_custom_name_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_disable_comments_seo_post_type_%'"

