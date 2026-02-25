#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prjcts_no_summary'
wp option delete 'prjcts_show_archive_links'
wp option delete 'prjcts_archive_links'
wp option delete 'prjcts_show_author_link'
wp option delete 'prjcts_author_label'
wp option delete 'prjcts_show_project_links'
wp option delete 'prjcts_project_link_text'
wp option delete 'prjcts_project_link_class'
wp option delete 'prjcts_hide_widgetarea'
wp option delete 'prjcts_no_css'
wp option delete 'prjcts_author_portfolio_slug'
wp option delete 'prjcts_uninstall'
wp option delete 'prjcts_reset_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prjcts_project_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prjcts_project_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prjcts_project_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prjcts_project_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prjcts_project_link_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prjcts_project_link_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prjcts_project_link_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prjcts_project_link_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prjcts_project_link_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prjcts_project_link_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prjcts_project_link_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prjcts_project_link_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prjcts_hide_project_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prjcts_hide_project_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prjcts_hide_project_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prjcts_hide_project_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prjcts_hide_widgetarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prjcts_hide_widgetarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prjcts_hide_widgetarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prjcts_hide_widgetarea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_project_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_project_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_project_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_project_summary'"
