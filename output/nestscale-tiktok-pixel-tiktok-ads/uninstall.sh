#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpns_tt_allow_nestads_api'
wp option delete 'wpns_tt_pwd'
wp option delete 'wpns_tt_consumer_key'
wp option delete 'wpns_tt_pixel_codes'

