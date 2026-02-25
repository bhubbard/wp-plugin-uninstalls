#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cliptakes_subscription'
wp option delete 'cliptakes_api_settings_options'
wp option delete 'cliptakes_general_settings_options'
wp option delete 'cliptakes_plugin_version'

# Delete Transients
wp transient delete 'cliptakes_activation_redirect'

