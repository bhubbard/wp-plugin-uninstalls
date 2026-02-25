#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WRPErrors_email_option'
wp option delete 'WRPErrors_hide_icon'
wp option delete 'WRPErrors_email'
wp option delete 'WRPErrors_message'
wp option delete 'WRPErrors_code'
wp option delete 'WRPErrors_subject'
wp option delete 'wordpress_api_key'
wp option delete 'akismet_spam_count'

