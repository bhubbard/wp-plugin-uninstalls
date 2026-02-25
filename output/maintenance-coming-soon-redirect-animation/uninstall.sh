#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wploti_maintenance_redirect_version'
wp option delete 'wploti_activation_notice'
wp option delete 'wploti_animation'
wp option delete 'wploti_status'
wp option delete 'wploti_notes_notice'
wp option delete 'wploti_message'
wp option delete 'wploti_header_type'
wp option delete 'wploti_whitelisted_roles'
wp option delete 'wploti_whitelisted_users'
wp option delete 'wploti_upload_animation'

