#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zohomailwoo_client_id'
wp option delete 'zohomailwoo_client_secret'
wp option delete 'zohomailwoo_refresh_token'
wp option delete 'zohomailwoo_access_token'
wp option delete 'zohomailwoo_domain_name'
wp option delete 'zohomailwoo_timestamp'
wp option delete 'zohomailwoo_mail_accid'
wp option delete 'zohomailwoo_from_email_id'
wp option delete 'zohomailwoo_from_name'
wp option delete 'zohomailwoo_is_configured'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zohomailwoo_from_%'"
wp option delete 'zohomailwoo_from_General'

