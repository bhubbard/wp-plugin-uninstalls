#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpli_option_name'
wp option delete 'arrows'
wp option delete 'sic_arrows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sic_title_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sic_title_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sic_title_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sic_title_checkbox'"
