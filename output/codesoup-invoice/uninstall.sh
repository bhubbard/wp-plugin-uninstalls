#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csip_permalinks_flushed'
wp option delete 'csip_company_nin'
wp option delete '_csip_company_nin'
wp option delete 'carbon_custom_sidebars'

# Delete Transients
wp transient delete 'csip_countries'
wp transient delete 'csip_currencies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inv_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inv_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inv_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inv_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inv_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inv_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inv_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inv_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cli_net_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cli_net_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cli_net_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cli_net_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_csip_company_account_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_csip_company_account_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_csip_company_account_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_csip_company_account_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_csip_company_account_details_other'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_csip_company_account_details_other'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_csip_company_account_details_other'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_csip_company_account_details_other'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
