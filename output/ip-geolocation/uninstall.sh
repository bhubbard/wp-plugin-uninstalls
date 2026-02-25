#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipgeo_enable_map'
wp option delete 'ipgeo_map_api_token'
wp option delete 'ipgeo_map_service'
wp option delete 'ipgeo_input_class'
wp option delete 'ipgeo_button_class'
wp option delete 'ipgeo_default_ip_type'
wp option delete 'ipgeo_api_service'
wp option delete 'ipgeo_api_token'
wp option delete 'ipgeo_map_width_section'
wp option delete 'ipgeo_map_height_section'

