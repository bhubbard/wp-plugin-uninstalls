#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'resmio_id'
wp option delete 'resmio_extended'
wp option delete 'resmio_btn_text'
wp option delete 'resmio_btn_bg'
wp option delete 'resmio_btn_bg_light'
wp option delete 'resmio_btn_bg_dark'
wp option delete 'resmio_wdgt_text'
wp option delete 'resmio_wdgt_bg'
wp option delete 'resmio_wdgt_width'
wp option delete 'resmio_wdgt_height'

