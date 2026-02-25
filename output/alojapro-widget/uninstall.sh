#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alojapro_settings'
wp option delete 'alojapro_config'
wp option delete 'alojapro_integration'
wp option delete 'alojapro_comments'
wp option delete 'alojapro_offers'

