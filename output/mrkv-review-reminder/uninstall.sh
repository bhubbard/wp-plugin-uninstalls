#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrkv_review_reminder'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_footer_text_color'
wp option delete 'woocommerce_email_header_image'

# Clear Cron Jobs
wp cron event delete 'mrkv_next_reminder'

