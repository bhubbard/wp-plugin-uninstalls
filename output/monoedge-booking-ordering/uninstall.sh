#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'monoedge_auth'
wp option delete 'monoedge_api_base_url'
wp option delete 'monoedge_user_data'
wp option delete 'monoedge_button_creator_settings'
wp option delete 'monoedge_settings'
wp option delete 'monoedge_stores'
wp option delete 'monoedge_store_progress'
wp option delete 'monoedge_button_styles'
wp option delete 'monoedge_analytics_cache'
wp option delete 'monoedge_qr_codes'

