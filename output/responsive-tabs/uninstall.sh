#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtbs_tabs_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtbs_tabs_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtbs_tabs_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtbs_tabs_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtbs_breakpoint'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtbs_breakpoint'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtbs_breakpoint'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtbs_breakpoint'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtbs_tbg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtbs_tbg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtbs_tbg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtbs_tbg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtbs_original_font'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtbs_original_font'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtbs_original_font'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtbs_original_font'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtbs_tabs_head'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtbs_tabs_head'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtbs_tabs_head'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtbs_tabs_head'"
