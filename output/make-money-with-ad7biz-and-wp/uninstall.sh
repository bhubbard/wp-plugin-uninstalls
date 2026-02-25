#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ad7_biz_id'
wp option delete 'wp_ad7_biz_type'
wp option delete 'wp_ad7_biz_domains'
wp option delete 'wp_ad7_biz_entry'
wp option delete 'wp_ad7_biz_convert'
wp option delete 'wp_ad7_biz_enable'

