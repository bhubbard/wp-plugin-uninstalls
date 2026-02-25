#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mail_from'
wp option delete 'mail_from_name'
wp option delete 'mailer'
wp option delete 'mail_set_return_path'
wp option delete 'smtp_host'
wp option delete 'smtp_port'
wp option delete 'smtp_ssl'
wp option delete 'smtp_auth'
wp option delete 'smtp_user'
wp option delete 'smtp_pass'

