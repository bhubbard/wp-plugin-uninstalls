#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contact_us_hotline_number'
wp option delete 'contact_us_facebook_messenger_link'
wp option delete 'contact_us_zalo_number'
wp option delete 'contact_us_google_map_link'

