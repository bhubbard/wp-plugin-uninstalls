#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%wqrerror' OR option_name LIKE '_site_transient_%wqrerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_wpcc_extra_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_wpcc_extra_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_wpcc_extra_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_wpcc_extra_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extra_wpcc_tab_desc_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extra_wpcc_tab_desc_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extra_wpcc_tab_desc_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extra_wpcc_tab_desc_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extra_wpcc_tab_title_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extra_wpcc_tab_title_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extra_wpcc_tab_title_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extra_wpcc_tab_title_fields'"
