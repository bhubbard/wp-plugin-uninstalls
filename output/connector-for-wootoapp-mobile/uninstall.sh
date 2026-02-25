#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wootoapp_blindkey'
wp option delete 'WC_settings_wootoapp_livemode_enabled'
wp option delete 'WC_settings_wootoapp_site_id'
wp option delete 'WC_settings_wootoapp_secret_key'

