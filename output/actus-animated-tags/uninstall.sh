#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ACTUS_ANIT_VERSION'
wp option delete 'ACTUS_ANIT_array'
wp option delete 'ACTUS_ANIT_height'
wp option delete 'ACTUS_ANIT_density'
wp option delete 'ACTUS_ANIT_min_font_size'
wp option delete 'ACTUS_ANIT_max_font_size'
wp option delete 'ACTUS_ANIT_background'
wp option delete 'ACTUS_ANIT_color'

