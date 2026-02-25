#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openai_api_key'
wp option delete 'api_key_type'
wp option delete 'kissai_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kissai_vars_nonce_%' OR option_name LIKE '_site_transient_kissai_vars_nonce_%'"
wp transient delete 'kissai_service_key'

# Clear Cron Jobs
wp cron event delete 'kissai_cleanup_expired_guids'

