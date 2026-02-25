#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcf_recaptcha_apikey'
wp option delete 'mcf_recaptcha_secret'
wp option delete 'mcf_sender_email'
wp option delete 'mcf_recipient_email'

