#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpsml_plugin_install_date'
wp option delete 'fpsml_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fpsml_hide_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fpsml_hide_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fpsml_hide_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fpsml_hide_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fpsml_form_alias'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fpsml_form_alias'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fpsml_form_alias'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fpsml_form_alias'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fpsml_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fpsml_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fpsml_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fpsml_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fpsml_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fpsml_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fpsml_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fpsml_author_name'"
