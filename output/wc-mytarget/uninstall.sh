#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imtfw_keeplogs'
wp option delete 'imtfw_disable_notices'
wp option delete 'imtfw_errors'
wp option delete 'imtfw_mytarget_id'
wp option delete 'imtfw_dynamic_remarketing'
wp option delete 'imtfw_feed_id'
wp option delete 'imtfw_code_location'
wp option delete 'active_sitewide_plugins'
wp option delete 'imtfw_version'

