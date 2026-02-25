#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plytix-settings'
wp option delete 'plytix-settings-options'
wp option delete 'plytix-settings-options-use-field-gtin'
wp option delete 'plytix_site_configuration'
wp option delete 'plytix_plugin_folder_id'
wp option delete 'plytix_api_credentials'

# Delete Transients
wp transient delete 'plytix_config_first_time'
wp transient delete 'plytix_show_config_msg_ok'
wp transient delete 'plytix_redirect'
wp transient delete 'plytix_show_api_msg_ok'

