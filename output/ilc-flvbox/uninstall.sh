#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ilc_flvbox_path'
wp option delete 'ilc_flvbox_width'
wp option delete 'ilc_flvbox_height'
wp option delete 'ilc_tb'
wp option delete 'ilc_player'
wp option delete 'ilc_flvbox_osflv_bgcolor'
wp option delete 'ilc_flvbox_osflv_fgcolor'
wp option delete 'ilc_flvbox_osflv_volume'

