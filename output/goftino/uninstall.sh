#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'goftino_widget_type'
wp option delete 'goftino_send_userdata'
wp option delete 'goftino_widget_id'

# Delete Transients
wp transient delete 'error_goftino'

