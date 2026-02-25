#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_maxelpay_settings'
wp option delete 'maxelpay_version'
wp option delete 'maxelpay_installDate'

