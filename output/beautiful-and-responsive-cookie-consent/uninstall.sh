#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsc_bar_first_activation'
wp option delete 'nsc_bar_intern_notice_review_later'
wp option delete 'nsc_bar_license_key'
wp option delete 'nsc_bar_capabilityCustom'

