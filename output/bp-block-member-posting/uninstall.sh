#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbmp-block-member-posting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbmp-block-member-posting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbmp-block-member-posting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbmp-block-member-posting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbmp-block-member-commenting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbmp-block-member-commenting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbmp-block-member-commenting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbmp-block-member-commenting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbmp-block-posting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbmp-block-posting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbmp-block-posting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbmp-block-posting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbmp-block-commenting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbmp-block-commenting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbmp-block-commenting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbmp-block-commenting'"
