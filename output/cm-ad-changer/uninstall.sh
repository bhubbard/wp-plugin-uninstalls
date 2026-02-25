#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acs_div_wrapper'
wp option delete 'acs_class_name'
wp option delete 'acs_slideshow_effect'
wp option delete 'acs_slideshow_interval'
wp option delete 'acs_slideshow_transition_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'
wp option delete 'acs_active'
wp option delete 'cmac_afterActivation'

