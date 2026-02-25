#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'civl_ci_learn_more_label'
wp option delete 'civl_ci_learn_more_link'
wp option delete 'classic-editor-replace'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'civil_credibility_indicators'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'civil_credibility_indicators'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'civil_credibility_indicators'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'civil_credibility_indicators'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'credibility_indicators'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'credibility_indicators'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'credibility_indicators'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'credibility_indicators'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondary_bylines'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondary_bylines'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondary_bylines'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondary_bylines'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cap-display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cap-display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cap-display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cap-display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'biography'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'biography'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'biography'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'biography'"
