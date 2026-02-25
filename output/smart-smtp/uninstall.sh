#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_smtp_mail_configuration'
wp option delete 'smart_smtp_secret_key'
wp option delete 'smart_smtp_secret_iv'
wp option delete 'smart_smtp_provider_type'
wp option delete 'smart_smtp_fallback_provider_type'
wp option delete 'smart_smtp_is_fallback_enabled'
wp option delete 'smart_smtp_brevo_mailer_validation'

