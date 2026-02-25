#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'woopgg_display'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woopgg_payment_group_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woopgg_checkout_payment_gateway_%'"
wp option delete 'woopgg_html_tag'
wp option delete 'woopgg_active_color'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

