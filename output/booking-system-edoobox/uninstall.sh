#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maps_google_api_key'
wp option delete 'edbs_next_options'
wp option delete 'edbs_next_options_templates'
wp option delete 'edbs_next_options_currentTemplate'
wp option delete 'edoobox_cache_time_in_s'
wp option delete 'edbs_edid'
wp option delete 'edbs_token'
wp option delete 'edbs_token_expires_at'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_edoobox_cache_%' OR option_name LIKE '_site_transient_edoobox_cache_%'"

