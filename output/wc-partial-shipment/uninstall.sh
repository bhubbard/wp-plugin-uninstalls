#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_footer_text'
wp option delete 'partially_shipped_status'
wp option delete 'partially_auto_complete'
wp option delete 'partially_hide_status'
wp option delete 'partially_enable_status_popup'

