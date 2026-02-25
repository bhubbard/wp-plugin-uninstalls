#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtbbootstrap_version'
wp option delete 'design-package_fa_license'
wp option delete 'design-package_fa_license_network'
wp option delete 'gtbbootstrap_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtb_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtb_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtb_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtb_hide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtb_wrap_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtb_wrap_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtb_wrap_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtb_wrap_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gtb_class_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gtb_class_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gtb_class_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gtb_class_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'editor_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'editor_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'editor_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'editor_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
