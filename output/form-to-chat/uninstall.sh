#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whatsform_url'
wp option delete 'whatsform_page_title'
wp option delete 'whatsform_path'
wp option delete 'whatsform_url_input'
wp option delete 'whatsform_page_title_input'
wp option delete 'whatsform_path_input'
wp option delete 'whatsform_widget_snippet'
wp option delete 'whatsform_widget_show_on'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_whatsform_inpost_snippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_whatsform_inpost_snippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_whatsform_inpost_snippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_whatsform_inpost_snippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whatsform_getting_started_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whatsform_getting_started_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whatsform_getting_started_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whatsform_getting_started_notice'"
