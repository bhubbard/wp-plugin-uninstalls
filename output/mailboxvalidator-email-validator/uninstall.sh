#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbv_email_validator'
wp option delete 'wp_mail_smtp'
wp option delete 'MBV_PLUGIN_VER'

