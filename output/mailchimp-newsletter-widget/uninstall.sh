#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailchimp_apikey'
wp option delete 'mailchimp_listid'
wp option delete 'mailchimp_signup_stats'
wp option delete 'mailchimp_email_log'
wp option delete 'mailchimp_custom_form'

