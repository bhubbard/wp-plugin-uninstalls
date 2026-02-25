#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_sf_width'
wp option delete 'simple_sf_pid'
wp option delete 'simple_sf_style'
wp option delete 'simple_sf_hide'
wp option delete 'simple_sf_delay'
wp option delete 'simple_sf_effect'
wp option delete 'simple_sf_activate_shortcode'

