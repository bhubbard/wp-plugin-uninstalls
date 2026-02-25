#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sogo_header_footer_lk_status'
wp option delete 'sogo_header_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oh-header-script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oh-header-script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oh-header-script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oh-header-script'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oh-hide-header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oh-hide-header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oh-hide-header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oh-hide-header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oh_add_script_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oh_add_script_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oh_add_script_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oh_add_script_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oh_add_script_header_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oh_add_script_header_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oh_add_script_header_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oh_add_script_header_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oh-footer-script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oh-footer-script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oh-footer-script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oh-footer-script'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oh-hide-footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oh-hide-footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oh-hide-footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oh-hide-footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oh_add_script_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oh_add_script_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oh_add_script_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oh_add_script_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oh_add_script_footer_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oh_add_script_footer_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oh_add_script_footer_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oh_add_script_footer_hide'"
