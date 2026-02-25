#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxgooglemap_general'
wp option delete 'cbxgooglemap_flush_rewrite_rules'
wp option delete 'cbxgooglemap_version'

# Delete Transients
wp transient delete 'cbxgooglemap_activated_notice'
wp transient delete 'cbxgooglemap_upgraded_notice'
wp transient delete 'cbxgooglemap_proaddon_deactivated'
wp transient delete 'cbxgooglemap_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lng'"
