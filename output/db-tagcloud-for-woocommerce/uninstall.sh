#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'db_tagcloud_cols'
wp option delete 'db_tagcloud_fontsize'
wp option delete 'db_tagcloud_fontweight'
wp option delete 'db_tagcloud_borderwidth'
wp option delete 'db_tagcloud_underlined'
wp option delete 'db_tagcloud_underlined_hover'
wp option delete 'db_tagcloud_color'
wp option delete 'db_tagcloud_color_hover'
wp option delete 'db_tagcloud_background'
wp option delete 'db_tagcloud_background_hover'

