#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_mailchimp_subscribe_status'
wp option delete 'simple_mailchimp_success_message'
wp option delete 'simple_mailchimp_error_message'
wp option delete 'simple_mailchimp_api_key'
wp option delete 'simple_mailchimp_default_list_id'
wp option delete 'simple_mailchimp_default_list'

