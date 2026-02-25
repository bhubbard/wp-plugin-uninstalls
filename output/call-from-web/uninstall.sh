#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfw_pairing_token'
wp option delete 'cfw_pairing_callback_token'
wp option delete 'cfw_secret_key'
wp option delete 'cfw_plugin_options'

