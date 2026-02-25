#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdpr-compliance-cookie-consent-lt'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stmgdpr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stmgdpr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stmgdpr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stmgdpr'"
