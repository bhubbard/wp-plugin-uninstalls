#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7ea_admin_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7ea_admin_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7ea_admin_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7ea_admin_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7ea_thank_you_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7ea_thank_you_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7ea_thank_you_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7ea_thank_you_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_2'"
