#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cancelled_order_email_enabled'
wp option delete 'cancorem_email_subject'
wp option delete 'cancelled_order_email_message'
wp option delete 'cancorem_email_message_html'
wp option delete 'cancelled_order_email_count'

