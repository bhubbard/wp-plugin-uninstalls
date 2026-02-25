#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tasrpas_settings'
wp option delete '_mpt_necessity'
wp option delete '_mpt_exists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tasrpasids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tasrpasids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tasrpasids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tasrpasids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saprsatids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saprsatids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saprsatids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saprsatids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_link'"
