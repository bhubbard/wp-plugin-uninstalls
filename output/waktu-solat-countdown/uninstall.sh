#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ezws_color_scheme'
wp option delete 'ezws_bg_enable'
wp option delete 'ezws_bg_repeat'
wp option delete 'ezws_bg_image'
wp option delete 'ezws_bg_scheme'
wp option delete 'ezws_textalign'
wp option delete 'ezws_credit'

