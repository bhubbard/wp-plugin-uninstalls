#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ect_settings_input_visitbutton'
wp option delete 'ect_settings_input_tclink'
wp option delete 'ect_settings_input_readmore'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect-tc-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect-tc-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect-tc-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect-tc-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect-affiliate-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect-affiliate-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect-affiliate-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect-affiliate-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect-column2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect-column2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect-column2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect-column2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect-column2-follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect-column2-follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect-column2-follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect-column2-follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect-column3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect-column3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect-column3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect-column3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect-outgoing-slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect-outgoing-slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect-outgoing-slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect-outgoing-slug'"
