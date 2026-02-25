#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hearthis_width'
wp option delete 'hearthis_height'
wp option delete 'hearthis_theme'
wp option delete 'hearthis_hcolor'
wp option delete 'hearthis_color'
wp option delete 'hearthis_style'
wp option delete 'hearthis_background'
wp option delete 'hearthis_waveform'
wp option delete 'hearthis_cover'
wp option delete 'hearthis_block_size'
wp option delete 'hearthis_block_space'
wp option delete 'hearthis_css'

