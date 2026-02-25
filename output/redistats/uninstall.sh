#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redistats_property_id'
wp option delete 'redistats_global_id'
wp option delete 'redistats_verification'
wp option delete 'redistats_status'
wp option delete 'redistats_api_key'
wp option delete 'redistats_email'

