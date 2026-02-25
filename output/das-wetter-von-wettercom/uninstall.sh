#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wettercom_api_user'
wp option delete 'wettercom_api_key'
wp option delete 'wettercom_api_citycode'
wp option delete 'wettercom_data_forecast'
wp option delete 'wettercom_data_updatetime'
wp option delete 'wettercom_api_secret'

