#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managememberships_page_pmpro-memberslistcolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managememberships_page_pmpro-memberslistcolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managememberships_page_pmpro-memberslistcolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managememberships_page_pmpro-memberslistcolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_blastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_blastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_blastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_blastname'"
