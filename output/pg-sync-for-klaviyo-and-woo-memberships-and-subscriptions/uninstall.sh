#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kwms_api_key'
wp option delete 'kwms_sync_external_id'
wp option delete 'kwms_list_id'
wp option delete 'kwms_segment_id'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kwms_list_size_%' OR option_name LIKE '_site_transient_kwms_list_size_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kwms_segment_size_%' OR option_name LIKE '_site_transient_kwms_segment_size_%'"

