#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'ss_wc_mailchimp_dismissed_notices'
wp transient delete 'sswcmc_lists'
wp transient delete 'sswcmc_list_web_ids'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

