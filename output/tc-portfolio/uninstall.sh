#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcportfolio_fields_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcportfolio_fields_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcportfolio_fields_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcportfolio_fields_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcportfolio_fields_project_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcportfolio_fields_project_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcportfolio_fields_project_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcportfolio_fields_project_url'"
