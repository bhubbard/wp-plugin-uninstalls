#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpnesi_mailgun_api_key'
wp option delete 'simpnesi_mailgun_domain'
wp option delete 'simpnesi_mailing_list'
wp option delete 'simpnesi_recaptcha_site_key'
wp option delete 'simpnesi_recaptcha_secret_key'
wp option delete 'simpnesi_recaptcha_threshold'

