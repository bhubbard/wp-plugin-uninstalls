#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbf_show_wiki_link'
wp option delete 'sbf_default_units'
wp option delete 'sbf_font_size'
wp option delete 'sbf_background_colour'
wp option delete 'sbf_border_width'
wp option delete 'sbf_border_colour'

