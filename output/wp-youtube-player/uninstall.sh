#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptube_width'
wp option delete 'wptube_height'
wp option delete 'wptube_method'
wp option delete 'wptube_player_version'
wp option delete 'wptube_showinfo'
wp option delete 'wptube_autoplay'
wp option delete 'wptube_theme'
wp option delete 'wptube_fs'
wp option delete 'wptube_rel'
wp option delete 'wptube_iv_load_policy'
wp option delete 'wptube_cc_load_policy'
wp option delete 'wptube_hd'
wp option delete 'wptube_showsearch'
wp option delete 'wptube_modestbranding'

