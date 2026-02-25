#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'borgun-rpg-notice-dismissed'
wp option delete 'woocommerce_borgun_rpg_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_processing' OR option_name LIKE '_site_transient_%_processing'"

