#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'floship_insurance_table_version'
wp option delete 'woocommerce_currency'
wp option delete 'wc_settings_tab_consumer_id'
wp option delete 'wc_settings_tab_show_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insurance_certificate_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insurance_certificate_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insurance_certificate_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insurance_certificate_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'certificate_claim_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'certificate_claim_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'certificate_claim_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'certificate_claim_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insurance_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insurance_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insurance_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insurance_status'"
