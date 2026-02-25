#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'partner_information_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'partner_information_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'partner_information_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'partner_information_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partner_information_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partner_information_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partner_information_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partner_information_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partner_information_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partner_information_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partner_information_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partner_information_description'"
