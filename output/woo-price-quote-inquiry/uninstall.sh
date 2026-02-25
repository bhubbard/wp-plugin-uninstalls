#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcpq_gen_stngs'
wp option delete 'wcpq_admin_welcome_options'
wp option delete 'wcpq_email_settings'
wp option delete 'active_sitewide_plugins'

