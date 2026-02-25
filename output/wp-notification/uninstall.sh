#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices_login'"
wp option delete 'custom_notices_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices_notification_type'"
wp option delete 'custom_notices_notification_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices_hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices_location'"
wp option delete 'custom_notices_hide'
wp option delete 'custom_notices_location'
wp option delete 'administrator_notices_text'
wp option delete 'administrator_notices_location'
wp option delete 'administrator_notices_notification_type'
wp option delete 'administrator_notices_hide'
wp option delete 'administrator_notices_admin_bar'
wp option delete 'editor_notices_text'
wp option delete 'editor_notices_location'
wp option delete 'editor_notices_notification_type'
wp option delete 'editor_notices_hide'
wp option delete 'editor_notices_admin_bar'
wp option delete 'author_notices_text'
wp option delete 'author_notices_location'
wp option delete 'author_notices_notification_type'
wp option delete 'author_notices_hide'
wp option delete 'author_notices_admin_bar'
wp option delete 'contributor_notices_text'
wp option delete 'contributor_notices_location'
wp option delete 'contributor_notices_notification_type'
wp option delete 'contributor_notices_hide'
wp option delete 'contributor_notices_admin_bar'
wp option delete 'subscriber_notices_text'
wp option delete 'subscriber_notices_location'
wp option delete 'subscriber_notices_notification_type'
wp option delete 'subscriber_notices_hide'
wp option delete 'subscriber_notices_admin_bar'
wp option delete 'custom_notices_login'
wp option delete 'custom_notices_admin_bar'

