#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vus_settings'
wp option delete 'vus_states'
wp option delete 'vus_plugin_options'

