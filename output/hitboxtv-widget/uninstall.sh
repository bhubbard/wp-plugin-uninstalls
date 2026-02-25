#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sthw_hide_unknown'
wp option delete 'sthw_cache_enable'
wp option delete 'sthw_cache_lifetime'
wp option delete 'widget_st_hitbox_widget'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_st_hitbox_widget-%' OR option_name LIKE '_site_transient_st_hitbox_widget-%'"

