#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skytake_envato_pro_licence'
wp option delete 'skytake_hide_review_notice'
wp option delete 'skytake_first_notice_hide'
wp option delete 'skytake_do_activation_redirect'
wp option delete 'skytake_upgrade_notice_time'
wp option delete 'selected_coupon'

# Delete Transients
wp transient delete 'skytake_hide_notices'

