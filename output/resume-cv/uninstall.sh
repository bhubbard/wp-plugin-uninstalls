#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'resumecv_options'
wp option delete 'resumecv_award_options'
wp option delete 'resumecv_contact_options'
wp option delete 'resumecv_education_options'
wp option delete 'resumecv_experience_options'
wp option delete 'resumecv_hobby_options'
wp option delete 'resumecv_profile_options'
wp option delete 'resumecv_qualification_options'
wp option delete 'resumecv_reference_options'
wp option delete 'resumecv_service_options'
wp option delete 'resumecv_skillbar_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
