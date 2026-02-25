#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fastevo_mp2_api_key'
wp option delete 'fastevo_mp2_storage_method'

# Delete Transients
wp transient delete 'fastevo_mp2_api_key_error'
wp transient delete 'fastevo_mp2_api_key_success'

