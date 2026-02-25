#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kwli_add_in_list'
wp option delete 'kwli_add_in_list_class'
wp option delete 'kwli_add_in_single'
wp option delete 'kwli_add_in_single_class'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kwl_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kwl_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kwl_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kwl_items'"
