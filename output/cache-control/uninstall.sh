#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_max_age'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_s_maxage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_staleerror'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stalereval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_paged'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mmulti'"
wp option delete 'wporg_hide_meta'
wp option delete 'cache_control_singles_mmulti'

