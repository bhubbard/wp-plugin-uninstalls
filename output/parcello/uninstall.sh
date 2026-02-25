#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parcello_token'
wp option delete 'parcello_tracking_page'
wp option delete 'parcello_tracking_method'
wp option delete 'parcello_tracking_carrier_field'
wp option delete 'parcello_tracking_id_field'

