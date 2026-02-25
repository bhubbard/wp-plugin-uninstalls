#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustlocal_widgets_api_key'
wp option delete 'trustlocal_widgets_country_code'
wp option delete 'trustlocal_widgets_data_id'

