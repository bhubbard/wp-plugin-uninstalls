#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ed_reshfl_show_activation_notice'
wp option delete 'ed_reshfl_db_version'
wp option delete 'ed_reshfl_db_schema'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_order'"
