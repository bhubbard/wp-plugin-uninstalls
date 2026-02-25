#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_knowledge_url_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_helpdesk_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_character_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_self_introduction'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_intro_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_require_login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_err_knowledge_url_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_err_helpdesk_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_err_character_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_err_self_introduction'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_err_intro_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_company_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_demo_valid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_data_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_data_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_err_data_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_err_data_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_prod_valid'"
wp option delete 'loolme__data_id'
wp option delete 'loolme__data_logo'
wp option delete 'loolme__company_id'
wp option delete 'loolme__require_login'
wp option delete 'loolme__prod_valid'
wp option delete 'loolme__demo_valid'

