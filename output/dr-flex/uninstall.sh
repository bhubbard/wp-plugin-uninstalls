#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_drflex_cache_db_version'
wp option delete 'drflex_api_key'
wp option delete 'drflex_connection_status'
wp option delete 'drflex_callback_textarea'
wp option delete 'drflex_button_configs'

