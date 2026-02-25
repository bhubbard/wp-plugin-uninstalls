#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mxmtzc_hire_developer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_olena_theme_install_notice_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_olena_theme_install_notice_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_olena_theme_install_notice_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_olena_theme_install_notice_viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_how_does_it_work_notice_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_how_does_it_work_notice_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_how_does_it_work_notice_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_how_does_it_work_notice_viewed'"
