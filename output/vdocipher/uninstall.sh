#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vdo_client_key'
wp option delete 'vdo_default_width'
wp option delete 'vdo_default_height'
wp option delete 'vdo_player_speed'
wp option delete 'vdo_embed_version'
wp option delete 'vdo_player_theme'
wp option delete 'vdo_annotate_code'
wp option delete 'vdo_send_user_id_in_api'
wp option delete 'vdo_show_plugin_in_sidebar'
wp option delete 'vdo_plugin_version'

