#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agmg_order_status_version_notice'
wp option delete 'agmg_order_status_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_agmg_order_status_mail_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_agmg_order_status_mail_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_agmg_order_status_mail_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_agmg_order_status_mail_subject'"
