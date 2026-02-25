#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gitium_keypair'
wp option delete 'gitium_webhook_key'

# Delete Transients
wp transient delete 'gitium_versions'
wp transient delete 'gitium_remote_tracking_branch'
wp transient delete 'gitium_is_status_working'
wp transient delete 'gitium_uncommited_changes'
wp transient delete 'gitium_git_version'
wp transient delete 'gitium_remote_disconnected'
wp transient delete 'gitium_menu_bubble'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_message_%' OR option_name LIKE '_site_transient_message_%'"

