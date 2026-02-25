#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'aisp_otools_add_custom_item'
wp option delete 'aisp_otools_redirect_page'
wp option delete 'aisp_otools_allow_on_hold_payment'

