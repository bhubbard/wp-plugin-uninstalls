#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailer'
wp option delete 'smtp_host'
wp option delete 'mail_set_return_path'
wp option delete 'smtp_ssl'
wp option delete 'smtp_port'
wp option delete 'smtp_auth'
wp option delete 'smtp_user'
wp option delete 'smtp_pass'
wp option delete 'mail_from'
wp option delete 'mail_from_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%number_of_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%thank_you'"

