#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter_integration_for_mailman3_options'
wp option delete 'newsletter_integration_for_mailman3_captchasecret'
wp option delete 'newsletter_integration_for_mailman3_captchasitekey'
wp option delete 'newsletter_integration_for_mailman3_mailman_email'

