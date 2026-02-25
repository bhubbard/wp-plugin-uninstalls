#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'absacga_enabled'
wp option delete 'absacga_redirect_back'
wp option delete 'absacga_custom_redirect_url'
wp option delete 'absacga_custom_login_url'
wp option delete 'absacga_bypass_roles'
wp option delete 'absacga_bypass_users'
wp option delete 'absacga_excluded_pages'
wp option delete 'absacga_excluded_templates'
wp option delete 'absacga_excluded_post_types'
wp option delete 'absacga_excluded_categories'
wp option delete 'absacga_excluded_tags'
wp option delete 'absacga_exclude_rss'
wp option delete 'absacga_exclude_rest_api'
wp option delete 'absacga_bypass_key'
wp option delete 'absacga_whitelist_ips'
wp option delete 'absacga_maintenance_mode'
wp option delete 'absacga_maintenance_message'
wp option delete 'absacga_maintenance_title'
wp option delete 'absacga_exclude_ajax'
wp option delete 'absacga_exclude_archives'
wp option delete 'absacga_login_message'

