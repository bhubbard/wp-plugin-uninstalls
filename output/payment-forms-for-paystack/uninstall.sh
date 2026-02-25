#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kkd_db_version'
wp option delete 'mode'
wp option delete 'tpk'
wp option delete 'tsk'
wp option delete 'lpk'
wp option delete 'lsk'
wp option delete 'prc'
wp option delete 'ths'
wp option delete 'adc'
wp option delete 'cap'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_merchant'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_merchant'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_merchant'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_merchant'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_successmsg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_successmsg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_successmsg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_successmsg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paybtn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paybtn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paybtn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paybtn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loggedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loggedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loggedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loggedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_txncharge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_txncharge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_txncharge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_txncharge'"
