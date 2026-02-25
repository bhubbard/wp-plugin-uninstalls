#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_enable_inspector'
wp option delete 'elementor_beta_auto_update'
wp option delete 'elementor_allow_tracking'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elementor_rollback_versions_%' OR option_name LIKE '_site_transient_elementor_rollback_versions_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elementor_pro_rollback_versions_%' OR option_name LIKE '_site_transient_elementor_pro_rollback_versions_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_preferences'"
