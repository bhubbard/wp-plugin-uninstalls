#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myprobooking_livekey'
wp option delete 'myprobooking_accesskey'
wp option delete 'myprobooking_previewurl'
wp option delete 'my_myprobooking_options'
wp option delete 'myprobooking_booking_plugin_version'

