#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_registration_groups_option_handle'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'field_reg_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'field_reg_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'field_reg_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'field_reg_groups'"
