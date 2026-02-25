#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wraiter_light_options'

# Delete Transients
wp transient delete 'wraiter_light_ad_banner_popup_dismissed'

