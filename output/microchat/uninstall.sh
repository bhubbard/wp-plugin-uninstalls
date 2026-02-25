#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'microchat_access_token'
wp option delete 'microchat_embed_widget_style'
wp option delete 'microchat_full_page_widget_style'

