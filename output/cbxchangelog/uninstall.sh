#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxchangelog_version'
wp option delete 'cbxchangelog_flush_rewrite_rules'

# Delete Transients
wp transient delete 'cbxchangelog_upgraded_notice'
wp transient delete 'cbxchangelog_activated_notice'
wp transient delete 'cbxchangelog_proaddon_deactivated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxchangelog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxchangelog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxchangelog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxchangelog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxchangelog_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxchangelog_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxchangelog_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxchangelog_extra'"
