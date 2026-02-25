#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickfisco_api_token'
wp option delete 'quickfisco_codice_ateco'
wp option delete 'quickfisco_plugin_disabled'
wp option delete 'quickfisco_version'
wp option delete 'quickfisco_activation_date'

