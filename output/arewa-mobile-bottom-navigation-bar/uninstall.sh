#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arewa_mbn_settings'
wp option delete 'arewa_mbn_buttons'
wp option delete 'arewa_mbn_submenus'
wp option delete 'arewa_mbn_visibility_cache_version'
wp option delete 'arewa_mbn_settings_backup'
wp option delete 'arewa_mbn_buttons_backup'
wp option delete 'arewa_mbn_submenus_backup'
wp option delete 'arewa_mbn_settings_backup_time'
wp option delete 'arewa_mbn_buttons_backup_time'
wp option delete 'arewa_mbn_submenus_backup_time'

