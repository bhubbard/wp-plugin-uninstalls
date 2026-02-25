#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'manzari_bad_words'
wp option delete 'manzari_enable_recaptcha'
wp option delete 'manzari_recaptcha_sitekey'
wp option delete 'manzari_recaptcha_secret'
wp option delete 'manzari_spam_blocked_total'
wp option delete 'manzari_recaptcha_type'
wp option delete 'manzari_email_alerts'

