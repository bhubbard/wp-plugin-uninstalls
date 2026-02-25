#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobile_smart_app_banner_review_notice_dismissed'
wp option delete 'mobile_smart_app_banner_user_already_reviewed'
wp option delete 'mobile_smart_app_banner_user_needs_help'
wp option delete 'mobile_smart_app_banner_activation_date'
wp option delete 'mobile_smart_app_banner_notice_dismiss_count'
wp option delete 'mobile_smart_app_banner_options'

