#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementrio_version'
wp option delete 'elementrio_installed_time'
wp option delete 'elementrio_do_activation_redirect'
wp option delete 'elementrio_settings'
wp option delete 'active_sitewide_plugins'

