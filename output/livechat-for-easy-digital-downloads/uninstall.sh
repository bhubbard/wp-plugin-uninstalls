#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'livechat_edd_license'
wp option delete 'livechat_edd_email'
wp option delete 'livechat_edd_cartDetails'
wp option delete 'livechat_edd_disableMobile'
wp option delete 'livechat_edd_disableGuests'
wp option delete 'livechat_edd_review_notice_start_timestamp'
wp option delete 'livechat_edd_review_notice_start_timestamp_offset'
wp option delete 'livechat_edd_review_notice_dismissed'

