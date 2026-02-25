#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mxclpopup_general_options'
wp option delete 'mxclpopup_page_options'
wp option delete 'mxclpopup_login_page'
wp option delete 'mxclpopup_register_page'
wp option delete 'mxclpopup_reset_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
