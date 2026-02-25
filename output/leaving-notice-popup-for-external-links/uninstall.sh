#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'externallinknotice_review_notice_dismissed'
wp option delete 'externallinknotice_activation_date'
wp option delete 'externallinknotice_notice_dismiss_count'
wp option delete 'externallinknotice_user_already_reviewed'
wp option delete 'externallinknotice_user_needs_help'
wp option delete 'external_links_notice_options'
wp option delete 'leaving_notice_popup_options'
wp option delete 'externallinknotice_options'

# Delete Transients
wp transient delete 'externallinknotice_activation'

