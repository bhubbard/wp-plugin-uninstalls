#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anm_update_notice_needed'
wp option delete 'anm_active_version'
wp option delete 'anm_settings'
wp option delete 'anm-plugin-installed-by-user-id'

