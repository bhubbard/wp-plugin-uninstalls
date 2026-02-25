#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ocs_settings'
wp option delete 'ocs_settings_isconfigured'
wp option delete 'ocs_settings_ismigrated'

