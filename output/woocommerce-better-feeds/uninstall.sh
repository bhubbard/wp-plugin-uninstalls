#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcbfeed_rss_export_image'
wp option delete 'wcbfeed_rss_export_price'
wp option delete 'wcbfeed_rss_image_size'

