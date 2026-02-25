#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bsmaps_gmap_key'
wp option delete 'bsmaps_options'

# Delete Transients
wp transient delete 'bsmaps_ad_banner_popup_dismissed'

