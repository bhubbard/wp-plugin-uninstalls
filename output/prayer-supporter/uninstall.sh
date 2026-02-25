#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'res_terms'
wp option delete 'res_calendar_color'
wp option delete 'res_color'
wp option delete 'res_security_plugin'
wp option delete 'res_security_settings'
wp option delete 'res_db_version'
wp option delete 'res_full_uninstall'
wp option delete 'res_incl_email'
wp option delete 'res_email'
wp option delete 'res_name'
wp option delete 'res_email_subject'
wp option delete 'res_days'

