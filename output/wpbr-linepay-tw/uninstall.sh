#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linepay_tw_payment_fail_order_status'
wp option delete 'linepay_tw_detail_status_note_enabled'
wp option delete 'linepay_tw_debug_log_enabled'
wp option delete 'linepay_tw_sandboxmode_enabled'
wp option delete 'linepay_tw_channel_id'
wp option delete 'linepay_tw_channel_secret'
wp option delete 'linepay_tw_sandbox_channel_id'
wp option delete 'linepay_tw_sandbox_channel_secret'
wp option delete 'woocommerce_linepay-tw_settings'
wp option delete 'linepay_tw_display_logo_enabled'

