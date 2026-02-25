#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TKP_STOPMODETW_maintenance_mode'
wp option delete 'TKP_STOPMODETW_maintenance_target'
wp option delete 'TKP_STOPMODETW_custom_resources'
wp option delete 'TKP_STOPMODETW_custom_products'
wp option delete 'TKP_STOPMODETW_maintenance_header'
wp option delete 'TKP_STOPMODETW_maintenance_text'
wp option delete 'TKP_STOPMODETW_maintenance_background'
wp option delete 'TKP_STOPMODETW_maintenance_background_image'
wp option delete 'TKP_STOPMODETW_maintenance_logo'
wp option delete 'TKP_STOPMODETW_maintenance_container_background'
wp option delete 'TKP_STOPMODETW_header_font_size'
wp option delete 'TKP_STOPMODETW_header_color'
wp option delete 'TKP_STOPMODETW_header_font'
wp option delete 'TKP_STOPMODETW_text_font_size'
wp option delete 'TKP_STOPMODETW_text_color'
wp option delete 'TKP_STOPMODETW_text_font'
wp option delete 'TKP_STOPMODETW_private_cookie_duration'
wp option delete 'TKP_STOPMODETW_private_cookie_never_expire'
wp option delete 'TKP_STOPMODETW_private_access_key'

