#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byw_lang'
wp option delete 'byw_name_city'
wp option delete 'byw_woeid'
wp option delete 'byw_image_set'
wp option delete 'byw_unit'
wp option delete 'byw_bgcolor'
wp option delete 'byw_css'
wp option delete 'byw_mylang'
wp option delete 'byw_smylang'
wp option delete 'byw_fontsize'
wp option delete 'byw_rtlorltr'
wp option delete 'plugin_error'

# Delete Transients
wp transient delete 'weather_feed'

