#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'okapi_wasb_activate'
wp option delete 'okapi_wasb_display_on_mobile'
wp option delete 'okapi_wasb_display_on_tablet'
wp option delete 'okapi_wasb_display_on_desktop'
wp option delete 'okapi_wasb_position'
wp option delete 'okapi_wasb_number'
wp option delete 'okapi_wasb_msg'
wp option delete 'okapi_wasb_width'
wp option delete 'okapi_wasb_height'
wp option delete 'okapi_wasb_margin'
wp option delete 'okapi_wasb_icon_type'
wp option delete 'okapi_wasb_icon_id'

