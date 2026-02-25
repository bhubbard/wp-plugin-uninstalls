#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apex_settings_group'
wp option delete 'apexchat_settings_group'
wp option delete 'apexchat_version'

