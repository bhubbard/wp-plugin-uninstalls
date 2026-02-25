#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mailfrom_ii_override_default'
wp option delete 'wp_mailfrom_ii_override_admin'
wp option delete 'wp_mailfrom_ii_name'
wp option delete 'wp_mailfrom_ii_email'
wp option delete 'site_mail_from_name'
wp option delete 'site_mail_from_email'

