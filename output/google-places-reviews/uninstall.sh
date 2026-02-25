#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'googleplacesreviews_options'
wp option delete 'gpr_widget_version'
wp option delete 'gpr_refid_upgraded'
wp option delete 'widget_gpr_widget'
wp option delete 'gpr_doing_upgrade'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gpr_widget_api_%' OR option_name LIKE '_site_transient_gpr_widget_api_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gpr_widget_options_%' OR option_name LIKE '_site_transient_gpr_widget_options_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gpr_activation_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gpr_activation_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gpr_activation_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gpr_activation_ignore_notice'"
