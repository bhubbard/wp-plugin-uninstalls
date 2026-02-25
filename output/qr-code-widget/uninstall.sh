#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qr_code_sc'
wp option delete 'qr_code_wg'
wp option delete 'qr_code_widget'
wp option delete 'widget_qrcode_widget'

