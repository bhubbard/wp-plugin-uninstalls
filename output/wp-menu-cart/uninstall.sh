#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmenucart'
wp option delete 'wpmenucart_shop_check'
wp option delete 'active_sitewide_plugins'

