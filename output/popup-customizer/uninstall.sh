#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popup_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popup_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popup_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popup_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popup_trigger_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popup_trigger_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popup_trigger_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popup_trigger_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_popup_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_popup_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_popup_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_popup_frequency'"
