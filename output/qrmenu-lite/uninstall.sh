#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qrlite-main-settings'
wp option delete 'qrlite_dismiss_notice_key'
wp option delete 'qrlite_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qrlite_configuration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qrlite_configuration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qrlite_configuration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qrlite_configuration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qrlite_dismiss_notice_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qrlite_dismiss_notice_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qrlite_dismiss_notice_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qrlite_dismiss_notice_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
