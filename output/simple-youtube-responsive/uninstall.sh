#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_erdyt_options'
wp option delete '_eirudo_ytresponsive_ratio'
wp option delete '_eirudo_ytresponsive_maxwidth'
wp option delete '_eirudo_ytresponsive_classes'
wp option delete '_eirudo_ytresponsive_center'
wp option delete '_eirudo_ytresponsive_autoplay'
wp option delete '_eirudo_ytresponsive_loop'
wp option delete '_eirudo_ytresponsive_fullscreen'
wp option delete '_eirudo_ytresponsive_lazy'
wp option delete '_eirudo_ytresponsive_thumbsize'
wp option delete '_eirudo_ytresponsive_js'
wp option delete '_eirudo_ytresponsive_css'
wp option delete '_eirudo_ytresponsive_printedscripts'
wp option delete '_erdyt_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_eirudo_ytresponsive_%'"

