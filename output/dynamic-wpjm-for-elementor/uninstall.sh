#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynawpel_elementor_preview_active'
wp option delete 'dynawpel_elementor_dynamic_tags_active'
wp option delete 'elementor_cpt_support'
wp option delete 'dynawpel_elementor_conditions_active'
wp option delete 'job_manager_currency'
wp option delete 'dynawpel_thousands_separator'
wp option delete 'dynawpel_decimal_separator'

# Delete Transients
wp transient delete 'dynawpel_elementor_reload_hooks'
wp transient delete 'dynawpel_elementor_activated'
wp transient delete 'dynawpel_elementor_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data%dynawpel_elementor%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data%dynawpel_elementor%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data%dynawpel_elementor%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data%dynawpel_elementor%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynawpel_elementor_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynawpel_elementor_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynawpel_elementor_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynawpel_elementor_%'"
