#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kontrol_version'
wp option delete 'kontrol_verify_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kontrol_module_%'"
wp option delete 'kontrol_cs_settings'
wp option delete 'kontrol_cs_settings_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kontrol_option_%'"

