#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmp_initial_sync_made'
wp option delete 'omnisend_pmp_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bfirstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_blastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_blastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_blastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_blastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_baddress1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_baddress1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_baddress1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_baddress1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_baddress2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_baddress2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_baddress2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_baddress2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bcity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bcity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bcity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bcity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bstate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bstate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bstate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bstate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bzipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bzipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bzipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bzipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bphone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bphone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bphone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bphone'"
