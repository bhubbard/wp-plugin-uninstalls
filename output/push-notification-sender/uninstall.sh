#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pns_google_api_key'
wp option delete 'pns_send_to_android_via'
wp option delete 'pns_ios_certi_name'
wp option delete 'pns_send_via_production'
wp option delete 'pns_send_to_ios'
wp option delete 'pns_send_to_android'
wp option delete 'ios_certi_name'
wp option delete 'pns_on_new_post_publish'
wp option delete 'pns_on_new_page_save'
wp option delete 'pns_on_new_user_register'
wp option delete 'pns_on_new_comment_post'
wp option delete 'pns_send_via_sandbox'
wp option delete 'pns_ios_certi_path'
wp option delete 'pns_ios_certificate_path'
wp option delete 'pns_ios_certificate_name'

