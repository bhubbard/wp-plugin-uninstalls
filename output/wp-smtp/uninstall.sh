#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solid_mail_migration_error'
wp option delete 'wp_smtp_options'
wp option delete 'stellarwp_telemetry'
wp option delete 'stellarwp_telemetry_last_send'

