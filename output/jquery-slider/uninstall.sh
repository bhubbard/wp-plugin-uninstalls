#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'js_width'
wp option delete 'js_height'
wp option delete 'js_pause'
wp option delete 'js_paging'
wp option delete 'js_nav'
wp option delete 'js_timer'
wp option delete 'js_thumbtype'

