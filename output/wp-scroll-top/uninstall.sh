#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wst_enable'
wp option delete 'wst_size'
wp option delete 'wst_duration'
wp option delete 'wst_txcolor'
wp option delete 'wst_bgcolor'
wp option delete 'wst_overclr'
wp option delete 'wst_otxtclr'
wp option delete 'wst_location'
wp option delete 'wst_style'
wp option delete 'wst_image'
wp option delete 'wst_imgalt'

