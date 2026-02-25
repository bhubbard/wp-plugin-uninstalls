#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcorgcr_default_height'
wp option delete 'jcorgcr_default_width'
wp option delete 'jcorgcr_default_theme_color'
wp option delete 'jcorgcr_default_notification_email'
wp option delete 'jcorgcr_default_failure_limit'
wp option delete 'jcorgcr_default_send_expiry_notification'
wp option delete 'jcorgcr_default_coupon_category'
wp option delete 'jcorgcr_obfuscate'
wp option delete 'disply_jcorgcr_url'
wp option delete 'jcorgcr_db_version'
wp option delete 'jcorgcr_intermediate_page_id'

