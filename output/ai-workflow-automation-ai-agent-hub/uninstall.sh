#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awfah_rbac_initialized'
wp option delete 'wp_ai_client_provider_credentials'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ai_agent_hub_oauth_state_%' OR option_name LIKE '_site_transient_ai_agent_hub_oauth_state_%'"

