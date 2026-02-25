#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authyo_forminator_email_subscription_dismissed'
wp option delete 'authyo_forminator_email_subscription_completed'
wp option delete 'authyo_forminator_settings'

# Delete Transients
wp transient delete 'authyo_forminator_show_email_subscription'
wp transient delete 'authyo_forminator_trigger_tracking'

