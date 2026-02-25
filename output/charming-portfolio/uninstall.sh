#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CHARMING_PORTFOLIO_v2'
wp option delete 'CHARMING_PORTFOLIO_additional_v2'
wp option delete 'CHARMING_PORTFOLIO_data'
wp option delete 'CHARMING_PORTFOLIO_additional_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enquiry_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enquiry_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enquiry_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enquiry_email'"
