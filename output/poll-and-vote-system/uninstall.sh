#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pvs_settings_data'
wp option delete 'pvs_listening_settings'
wp option delete 'pvs_customize_settings'

