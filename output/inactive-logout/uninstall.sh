#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__ina_overrideby_multisite_setting'
wp option delete '__ina_logout_time'
wp option delete '__ina_logout_message'
wp option delete '__ina_warn_message'
wp option delete '__ina_after_logout_message'
wp option delete '__ina_roles'
wp option delete '__ina_enable_timeout_multiusers'
wp option delete '__ina_multiusers_settings'
wp option delete '__ina_general_settings'

