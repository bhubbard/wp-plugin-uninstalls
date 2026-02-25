#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stswpro_tickets_table_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%renameOrderButtonLink'"
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%renameAccountTabLink'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hideClosed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%textforResponseSave'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%textforTicketSave'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailToADmin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%AdminEmailAddress'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailToCustomer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailIt_subjectToCust'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailIt_contentToCust'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notification' OR option_name LIKE '_site_transient_%_notification'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'STSWooCommerceProticketuser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'STSWooCommerceProticketuser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'STSWooCommerceProticketuser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'STSWooCommerceProticketuser'"
