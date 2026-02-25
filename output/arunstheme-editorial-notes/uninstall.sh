#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arunstheme_editorial_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arunstheme_editorial_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arunstheme_editorial_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arunstheme_editorial_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arunstheme_editorial_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arunstheme_editorial_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arunstheme_editorial_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arunstheme_editorial_status'"
