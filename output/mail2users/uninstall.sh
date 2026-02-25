#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eregards'
wp option delete 'etemplate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'm2u_%'"
wp option delete 'esubject'
wp option delete 'elength'
wp option delete 'mail_from'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mail2users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mail2users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mail2users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mail2users'"
