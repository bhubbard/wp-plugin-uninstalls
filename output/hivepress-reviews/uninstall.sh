#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_reviews_per_page'
wp option delete 'hp_review_default_order'
wp option delete 'hp_review_allow_attachment'
wp option delete 'hp_review_allow_replies'
wp option delete 'hp_installed_time'
wp option delete 'hp_review_allow_anonymous'
wp option delete 'hp_review_criteria'
wp option delete 'hp_review_enable_moderation'
wp option delete 'hp_review_allow_multiple'
wp option delete 'hp_user_enable_display'

