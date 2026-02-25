#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_enable_reminder_email_admin'
wp option delete 'pi_dont_send_reminder_if_order_status_is'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'pi_email_reminder_trigger'

# Clear Cron Jobs
wp cron event delete 'pisol_order_reminder_event'

