#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_content_protector'
wp option delete 'scp_disable_for_logged_in'
wp option delete 'scp_protect_images'
wp option delete 'scp_protect_text_selection'
wp option delete 'scp_protect_print'
wp option delete 'scp_protect_screenshot'
wp option delete 'scp_protect_dev_tools'
wp option delete 'scp_protect_right_click'
wp option delete 'scp_enable_role_restriction'
wp option delete 'scp_allowed_roles'
wp option delete 'scp_excluded_pages'
wp option delete 'scp_alert_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scp_disable_protection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scp_disable_protection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scp_disable_protection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scp_disable_protection'"
