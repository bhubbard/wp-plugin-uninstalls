#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r34ps_notification_recipients'
wp option delete 'r34ps_notification_subject'
wp option delete 'r34ps_notification_message'
wp option delete 'r34ps_version'
wp option delete 'r34ps_previous_version'
wp option delete 'r34ps_deferred_admin_notices'

