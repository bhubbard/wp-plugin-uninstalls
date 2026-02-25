#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epn_settings'
wp option delete 'epn_qrcode_hash'

