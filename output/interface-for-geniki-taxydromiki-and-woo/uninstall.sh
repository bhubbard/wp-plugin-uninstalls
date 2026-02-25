#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'username'
wp option delete 'password'
wp option delete 'appkey'
wp option delete 'pagetype'
wp option delete 'testmode'
wp option delete 'autogenerate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geniki-taxidromiki-is-canceled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geniki-taxidromiki-is-canceled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geniki-taxidromiki-is-canceled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geniki-taxidromiki-is-canceled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geniki-taxidromiki-is-closed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geniki-taxidromiki-is-closed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geniki-taxidromiki-is-closed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geniki-taxidromiki-is-closed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geniki-taxidromiki-jobid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geniki-taxidromiki-jobid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geniki-taxidromiki-jobid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geniki-taxidromiki-jobid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geniki-taxidromiki-voucher-number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geniki-taxidromiki-voucher-number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geniki-taxidromiki-voucher-number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geniki-taxidromiki-voucher-number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geniki-taxidromiki-voucher-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geniki-taxidromiki-voucher-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geniki-taxidromiki-voucher-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geniki-taxidromiki-voucher-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geniki-taxidromiki-voucher-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geniki-taxidromiki-voucher-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geniki-taxidromiki-voucher-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geniki-taxidromiki-voucher-date'"
