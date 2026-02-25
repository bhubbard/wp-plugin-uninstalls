#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'bani_widget_hash_mismatch'
wp option delete 'bani_widget_verified_hash'
wp option delete 'bani_last_security_alert_time'
wp option delete 'bani_security_alerts'
wp option delete 'bani_url_violation_log'
wp option delete 'bani_amount_tampering_log'
wp option delete 'woocommerce_bani_settings'

