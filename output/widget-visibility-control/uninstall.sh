#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_wvc_jetpack_notice_dismissed'
wp option delete 'jetpack_active_modules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'ayudawp_wvc_conditions'
wp option delete 'ayudawp_wvc_settings'
wp option delete 'ayudawp_wvc_migrated'

