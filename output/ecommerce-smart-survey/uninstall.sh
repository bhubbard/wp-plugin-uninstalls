#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__ES_SURVEY_base_path'
wp option delete '__ES_SURVEY_base_path_old'
wp option delete '__ES_SURVEY_general_widget'
wp option delete '__ES_SURVEY_home_widget'
wp option delete 'ES_SURVEY_db_version'
wp option delete 'ES_SURVEY_is_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_no_of_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_no_of_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_no_of_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_no_of_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ES_SURVEY_options_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ES_SURVEY_options_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ES_SURVEY_options_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ES_SURVEY_options_%'"
