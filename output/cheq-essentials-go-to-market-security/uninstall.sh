#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clickcease_whitelist'
wp option delete 'clickcease_bot_zapping_authenticated'
wp option delete 'clickcease_api_key'
wp option delete 'clickcease_domain_key'
wp option delete 'clickcease_secret_key'
wp option delete 'cheq_invalid_secret'
wp option delete 'monitoring'
wp option delete 'cc_version_updated'
wp option delete 'installTag'
wp option delete 'cc_send_plugin_state'
wp option delete 'cc_check_plugin_state'
wp option delete 'clickcease_remove_tracking'
wp option delete 'clickcease_client_id'
wp option delete 'secret_checked'

