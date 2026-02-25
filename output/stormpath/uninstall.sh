#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stormpath_client_apikey_properties'
wp option delete 'stormpath_client_apikey_id'
wp option delete 'stormpath_client_apikey_secret'
wp option delete 'stormpath_application'
wp option delete 'stormpath_client_apikey_file'

