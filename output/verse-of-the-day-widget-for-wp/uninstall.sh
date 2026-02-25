#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'votd_font_family_settings'
wp option delete 'votd_language'
wp option delete 'votd_background_type'
wp option delete 'votd_activation_date'
wp option delete 'votd_review_notice_delayed_until'
wp option delete 'votd_review_notice_dismissed'

