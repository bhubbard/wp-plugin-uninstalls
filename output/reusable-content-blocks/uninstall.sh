#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcb_hide_unpub'
wp option delete 'rcb_enable_widget'
wp option delete 'rcb_css_metakeys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
