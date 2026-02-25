#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gn-sitemap-image-feed-mu-version'

# Delete Transients
wp transient delete 'xml_sitemap_image'
wp transient delete 'apg_image_sitemap_plugin'

# Clear Cron Jobs
wp cron event delete 'enviar_ping'

