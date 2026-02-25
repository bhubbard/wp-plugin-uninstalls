#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ICD_Hosting_Admin_Notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'icd_hosting_admin_notice_%'"
wp option delete 'icd_hosting_version'
wp option delete 'icd_hosting_excluded_pages_ids'
wp option delete 'icd_hosting_domaincheck_page_id'
wp option delete 'icd_hosting_hostingorder_page_id'
wp option delete 'icd_hosting_certificates_page_id'
wp option delete 'icd_hosting_thankyou_page_id'
wp option delete 'icd_hosting_terms_page_id'
wp option delete 'icd_hosting_payment_page_id'
wp option delete 'icd_hosting_postback_page_id'
wp option delete 'icd_hosting_request_page_id'
wp option delete 'icd_hosting_renew_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
