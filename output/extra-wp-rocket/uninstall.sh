#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rocket_extra_gzlaststatic'
wp option delete 'rocket_extra_alert_activation'
wp option delete 'rocket_extra_option_preload'
wp option delete 'rocket_extra_preload_interval'
wp option delete 'rocket_extra_option_preload_interval'
wp option delete 'rocket_extra_option_hideimagify'
wp option delete 'rocket_extra_option_gzlevel'
wp option delete 'rocket_extra_gzlevel'
wp option delete 'rocket_extra_option_gzstatic'
wp option delete 'rocket_extra_gzcron'
wp option delete 'rocket_extra_option_disqus'
wp option delete 'wp_rocket_settings'

# Delete Transients
wp transient delete 'rocket_preload_complete'
wp transient delete 'rocket_preload_running'

