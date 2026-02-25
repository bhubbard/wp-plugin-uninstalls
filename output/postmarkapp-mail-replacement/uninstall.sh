#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pm_wp_mail_address'
wp option delete 'pm_wp_mail_type'
wp option delete 'pm_wp_mail_db_version'
wp option delete 'pm_wp_mail_key'
wp option delete 'pm_wp_mail_activate'

