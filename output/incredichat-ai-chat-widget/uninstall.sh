#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'incredichat_api_key'
wp option delete 'incredichat_widget_id'
wp option delete 'incredichat_embed_code'

