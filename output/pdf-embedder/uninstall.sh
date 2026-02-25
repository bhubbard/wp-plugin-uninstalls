#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppdf_review'
wp option delete 'wppdf_emb_activation'
wp option delete 'wppdf_emb_activation_premium'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

