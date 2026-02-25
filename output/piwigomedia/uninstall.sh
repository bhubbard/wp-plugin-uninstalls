#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'piwigomedia_images_per_page'
wp option delete 'piwigomedia_piwigo_urls'
wp option delete 'piwigomedia_piwigo_url'

