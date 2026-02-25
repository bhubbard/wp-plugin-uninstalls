#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ph_child_allow_guests'
wp option delete 'ph_child_enabled_comment_roles'
wp option delete 'dismissed-ph-flywheel-child'
wp option delete 'dismissed-ph-wp-engine-child'
wp option delete 'ph_child_access_token'
wp option delete 'ph_child_admin'
wp option delete 'ph_child_plugin_link'
wp option delete 'ph_child_plugin_author'
wp option delete 'ph_child_plugin_author_url'
wp option delete 'ph_child_plugin_name'
wp option delete 'ph_child_plugin_description'
wp option delete 'ph_child_installed'
wp option delete 'ph_child_manual_connection'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ph_child_%'"
wp option delete 'ph_child_parent_url'
wp option delete 'ph_child_id'
wp option delete 'ph_child_api_key'
wp option delete 'ph_child_signature'
wp option delete 'ph_child_project_id'
wp option delete 'ph_child_admin_enabled'
wp option delete 'ph_child_connection_status'
wp option delete 'ph_child_commenters'

