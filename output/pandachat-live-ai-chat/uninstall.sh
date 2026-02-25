#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pandachat_connected'
wp option delete 'pandachat_connection_date'
wp option delete 'pandachat_channel_id'
wp option delete 'pandachat_endpoint'
wp option delete 'pandachat_embed_link'
wp option delete 'pandachat_widget_code'
wp option delete 'pandachat_connection_token'
wp option delete 'pandachat_public_key'

