#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustifi_mailer_smtp_username'
wp option delete 'trustifi_mailer_smtp_password'
wp option delete 'trustifi_mailer_from_name'
wp option delete 'trustifi_mailer_from_email'
wp option delete 'trustifi_mailer_enable_encryption'
wp option delete 'trustifi_mailer_activated'

