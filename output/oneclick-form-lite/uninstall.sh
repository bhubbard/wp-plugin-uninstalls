#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ocflite_transport'
wp option delete 'ocflite_to_email'
wp option delete 'ocflite_from_email'
wp option delete 'ocflite_from_name'
wp option delete 'ocflite_smtp_host'
wp option delete 'ocflite_smtp_port'
wp option delete 'ocflite_smtp_secure'
wp option delete 'ocflite_smtp_user'
wp option delete 'ocflite_smtp_pass'
wp option delete 'ocflite_file_format'
wp option delete 'ocflite_recaptcha_enable'
wp option delete 'ocflite_recaptcha_site_key'
wp option delete 'ocflite_recaptcha_secret_key'
wp option delete 'ocflite_recaptcha_threshold'
wp option delete 'ocflite_recaptcha_action'

# Delete Transients
wp transient delete 'ocflite_rate_limit'

