#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_order_status_control_installed'
wp option delete 'wc_order_status_control'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpi_check_ran_%' OR option_name LIKE '_site_transient_wpi_check_ran_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rn_dismissed'"
