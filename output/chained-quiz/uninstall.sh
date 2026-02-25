#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chained_csv_delim'
wp option delete 'chained_csv_quotes'
wp option delete 'chained_integrations'
wp option delete 'chainedchimp_api_key'
wp option delete 'chainedchimp_no_optin'
wp option delete 'chained_ui'
wp option delete 'chained_facebook_appid'
wp option delete 'chained_linkedin'
wp option delete 'chained_twitter'
wp option delete 'chained_sender_name'
wp option delete 'chained_sender_email'
wp option delete 'chained_gdpr_ips'
wp option delete 'chained_text_captcha'
wp option delete 'chained_fixed_sort_order'
wp option delete 'chainedquiz_version'
wp option delete 'chained_admin_subject'
wp option delete 'chained_user_subject'
wp option delete 'chained_version'
wp option delete 'chained_debug_mode'
wp option delete 'chainedquiz_cleanup'
wp option delete 'chainedquiz_cleanup_db'

