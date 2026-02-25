#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elex_ppct_check_field'
wp option delete 'elex_ppct_select_all_pages_value'
wp option delete 'elex_ppct_pages'
wp option delete 'elex_ppct_prefix_field'
wp option delete ' elex_ppct_suffix_field'
wp option delete 'elex_ppct_discount_type'
wp option delete 'elex_ppct_discount_amount'
wp option delete 'ppct_general_settings'
wp option delete 'elex_ppct_suffix_field'
wp option delete 'elex_ppct_migration'
wp option delete 'elex_ppct_discount_percent'
wp option delete 'elex_ppct_customization_data'
wp option delete 'elex_ppct_select_all_categories_id'
wp option delete 'elex_ppct_categories'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp option delete 'active_sitewide_plugins'

