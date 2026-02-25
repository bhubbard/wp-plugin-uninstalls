#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwcfe_wc_fields_block_billing'
wp option delete 'jwcfe_wc_fields_block_shipping'
wp option delete 'jwcfe_wc_fields_block_additional'
wp option delete 'jwcfe_account_label'
wp option delete 'jwcfe_account_sync_fields'
wp option delete 'jwcfe_wc_fields_account'
wp option delete 'jwcfe_wc_fields_billing'
wp option delete 'jwcfe_wc_fields_shipping'
wp option delete 'jwcfe_wc_fields_additional'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jwcfe_wc_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jwcfe_wc_fields_block_%'"
wp option delete 'jwcfe_email_label'
wp option delete 'jwcfe_order_label'
wp option delete 'jwcfe_activation_redirect'
wp option delete 'active_sitewide_plugins'
wp option delete 'pdf'
wp option delete 'jwcfe_selected_pdfinvoice_fields'
wp option delete 'jwcfe_selected_csv_fields'

