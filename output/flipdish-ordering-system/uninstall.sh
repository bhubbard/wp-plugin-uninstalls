#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'flipdish_ordering_options'
wp option delete 'FLIPDISH_ORDERING_VERSION'
wp option delete 'portal_ID'
wp option delete 'light_or_dark_theme'
wp option delete 'data_offset_value'
wp option delete 'transparent_background'
wp option delete 'apple_pay'

