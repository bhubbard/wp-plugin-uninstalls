#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'jh_disable_post_types'
wp option delete 'jh_disabled_option'
wp option delete 'jh_installation_date'
wp option delete 'jh_review_notice_status'

