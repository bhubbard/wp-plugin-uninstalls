#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pitane_api_key'
wp option delete 'google_countries'
wp option delete 'google_api_key'
wp option delete 'pitane_api_url'
wp option delete 'pitane_api_port'
wp option delete 'tariffT'
wp option delete 'tariffB'
wp option delete 'tariffR'
wp option delete 'rei_vor_id'
wp option delete 'rei_id'
wp option delete 'filter'
wp option delete 'gate12_guid'
wp option delete 'companyname'
wp option delete 'pitane_main_color'
wp option delete 'pitane_button_color'
wp option delete 'pitane_text_main_color'
wp option delete 'pitane_background_color'
wp option delete 'pitane_widget_text_color'
wp option delete 'pitane_success_text_color'
wp option delete 'pitane_error_text_color'

