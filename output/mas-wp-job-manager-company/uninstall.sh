#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'job_manager_company_enable_company_category'
wp option delete 'job_manager_company_enable_company_strength'
wp option delete 'job_manager_company_enable_average_salary'
wp option delete 'job_manager_company_enable_company_revenue'
wp option delete 'job_manager_company_category_filter_type'
wp option delete 'job_manager_companies_per_page'
wp option delete 'job_manager_submit_company_form_page_id'
wp option delete 'job_manager_company_dashboard_page_id'
wp option delete 'job_manager_company_submission_limit'
wp option delete 'job_manager_user_can_edit_pending_company_submissions'
wp option delete 'job_manager_enable_recaptcha_company_submission'
wp option delete 'job_manager_registration_role'
wp option delete 'job_manager_company_submission_requires_approval'
wp option delete 'job_manager_job_submission_required_company'
wp option delete 'job_manager_manager_submit_company_form_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mas_wpjmc_layered_nav_counts_%' OR option_name LIKE '_site_transient_mas_wpjmc_layered_nav_counts_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name_prefix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name_prefix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name_prefix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name_prefix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_id'"
