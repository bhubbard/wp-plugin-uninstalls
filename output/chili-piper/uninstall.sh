#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_concierge_tenant'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_concierge_tenant'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_concierge_tenant'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_concierge_tenant'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_concierge_router'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_concierge_router'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_concierge_router'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_concierge_router'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp_concierge_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp_concierge_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp_concierge_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp_concierge_form'"
