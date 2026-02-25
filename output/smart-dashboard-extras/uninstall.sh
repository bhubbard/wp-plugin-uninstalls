#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'st_can_remove_wordpress_logo'
wp option delete 'st_can_remove_dashboard_menu'
wp option delete 'st_can_remove_admin_toolbar'
wp option delete 'st_can_remove_contextual_help_link'
wp option delete 'st_can_remove_dash_widgets'
wp option delete 'st_can_remove_wordpress_version'
wp option delete 'st_footer_message'
wp option delete 'st_can_contributor_upload_files'
wp option delete 'st_can_contributor_view_others_post'
wp option delete 'st_can_notify_admin_on_login'
wp option delete 'st_notify_email_message'

