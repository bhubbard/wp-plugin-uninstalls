#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openone_apikey'
wp option delete 'openone_secretkey'
wp option delete 'openone_date_from'
wp option delete 'openone_date_to'
wp option delete 'openone_store_selected'
wp option delete 'openone_check_selected'
wp option delete 'openone_custom_address'
wp option delete 'openone_custom_zipcode'
wp option delete 'openone_custom_city'

