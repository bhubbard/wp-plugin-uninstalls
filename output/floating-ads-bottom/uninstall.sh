#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'floating_ads_bottom_script'
wp option delete 'floating_ads_bottom_status'
wp option delete 'floating_ads_bottom_desktop'
wp option delete 'floating_ads_bottom_mobile'

