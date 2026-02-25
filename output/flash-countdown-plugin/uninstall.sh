#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fcdp_sponsor_link'
wp option delete 'fcdp_form_url'
wp option delete 'fcdp_xml_options'
wp option delete 'fcdp_title'
wp option delete 'fcdp_target_date'
wp option delete 'fcdp_target_time'
wp option delete 'fcdp_target_timezone'
wp option delete 'fcdp_background_color'
wp option delete 'fcdp_header_color'
wp option delete 'fcdp_header_txt_color'
wp option delete 'fcdp_panel_color'
wp option delete 'fcdp_countdown_txt_color'
wp option delete 'fcdp_panel_txt_color'
wp option delete 'fcdp_image_url'

