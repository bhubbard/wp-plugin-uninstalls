#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_nfproot_plugins_settings'
wp option delete '_nfp_root_settings'
wp option delete '_nfp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfpmnm_can_login_on_maintenance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfpmnm_can_login_on_maintenance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfpmnm_can_login_on_maintenance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfpmnm_can_login_on_maintenance'"
