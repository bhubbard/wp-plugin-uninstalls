#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'lvdwcmc_auto_gateway_diagnostics'

