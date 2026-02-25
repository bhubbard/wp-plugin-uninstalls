#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ext_dismissed_info_banner'
wp option delete 'woocommerce_dismissed_info_banner'
wp option delete 'woocommerce_ba_id'
wp option delete 'woocommerce_bmerch_id'

