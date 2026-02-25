#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wap_payment_status'
wp option delete 'wap_payment_data'
wp option delete 'wap_status'

