#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_piggly_pix_settings'
wp option delete 'wc_piggly_pix_dbversion'
wp option delete 'wc_piggly_pix_version'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'pgly_cron_wc_piggly_pix_processing'

