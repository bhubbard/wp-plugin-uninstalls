#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filejet_api_key'
wp option delete 'filejet_storage_id'
wp option delete 'secret'
wp option delete 'filejet_config'
wp option delete 'filejet_secret'

