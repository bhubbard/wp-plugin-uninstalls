#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crsbkr_hue'
wp option delete 'crsbkr_sat'
wp option delete 'crsbkr_lig'
wp option delete 'crsbkr_booking_endpoint'
wp option delete 'crsbkr_endpoint'
wp option delete 'crsbkr_uuid'
wp option delete 'crsbkr_api_key'
wp option delete 'crsbkr_search_results_page'

