#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'celia_meta_mappings'
wp option delete 'celia_admin_notices'
wp option delete 'celia_verification_code'
wp option delete 'celia_api_pin'

