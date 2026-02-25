#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MonLabo_settings_group10'
wp option delete 'MonLabo_settings_group4'
wp option delete 'MonLabo_settings_group3'
wp option delete 'MonLabo_settings_group1'
wp option delete 'MonLabo_settings_group2'
wp option delete 'MonLabo_settings_group7'
wp option delete 'MonLabo_settings_group0'
wp option delete 'MonLabo_settings_group5'
wp option delete 'MonLabo_settings_group11'
wp option delete 'MonLabo_settings_group8'
wp option delete 'MonLabo_settings_group9'
wp option delete 'MonLabo_settings_group6'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_theme_show_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_theme_show_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_theme_show_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_theme_show_page_title'"
