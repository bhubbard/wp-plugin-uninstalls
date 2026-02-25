#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sms_from_email'
wp option delete 'sms_from_name'
wp option delete 'sms_default_subject'
wp option delete 'sms_new_notify'
wp option delete 'sms_publish_post'
wp option delete 'sms_new_notify_email'
wp option delete 'bf_easysms_widget_options'

