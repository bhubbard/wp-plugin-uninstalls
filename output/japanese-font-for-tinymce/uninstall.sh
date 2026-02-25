#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tinyjpfont_check_cdn'
wp option delete 'tinyjpfont_select'
wp option delete 'tinyjpfont_gutenberg'
wp option delete 'tinyjpfont_head'
wp option delete 'tinyjpfont_default_font'
wp option delete 'tinyjpfont_whole_font'
wp option delete 'tinyjpfont_check_noto'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tinyjpfont_fix430_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tinyjpfont_fix430_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tinyjpfont_fix430_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tinyjpfont_fix430_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tinyjpfont_gutenberg_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tinyjpfont_gutenberg_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tinyjpfont_gutenberg_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tinyjpfont_gutenberg_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tinyjpfont_install_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tinyjpfont_install_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tinyjpfont_install_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tinyjpfont_install_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tinyjpfont_advanced_warning_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tinyjpfont_advanced_warning_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tinyjpfont_advanced_warning_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tinyjpfont_advanced_warning_dismissed'"
