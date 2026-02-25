#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zeptowoo_client_id'
wp option delete 'zeptowoo_client_secret'
wp option delete 'zeptowoo_refresh_token'
wp option delete 'zeptowoo_access_token'
wp option delete 'zeptowoo_domain_name'
wp option delete 'zeptowoo_timestamp'
wp option delete 'zeptowoo_mail_agent'
wp option delete 'zeptowoo_from_email_id'
wp option delete 'zeptowoo_from_name'
wp option delete 'zeptowoo_cc_email_id'
wp option delete 'zeptowoo_bcc_email_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zeptowoo_%'"

