#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_vidlive_widgets'
wp option delete 'vidlive_api_key'
wp option delete 'vidlive_embedding'
wp option delete 'vidlive_show_panel'

