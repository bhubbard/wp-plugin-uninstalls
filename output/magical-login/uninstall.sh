#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%recovery_email_subject'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%recovery_email_content'"
wp option delete 'name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email_login_alowed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%username_login_alowed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email_recovery_alowed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%username_recovery_alowed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_header'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_username_lable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_username_placeholder'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_pass_lable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_pass_placeholder'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_rememberme_lable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_submit_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_rememberme_defualt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%recovery_header'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%recovery_username_lable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%recovery_username_placeholder'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%recovery_submit_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%extra_wp_login'"

