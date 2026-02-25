#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authyo_wpforms_settings'
wp option delete 'authyo_wpforms_countries_cache'
wp option delete 'authyo_wpforms_enabled_channels'
wp option delete 'authyo_wpforms_form_settings'

# Delete Transients
wp transient delete 'authyo_wpforms_trigger_tracking'

