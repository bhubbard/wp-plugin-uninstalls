#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scrollhighlight_selector'
wp option delete 'scrollhighlight_el_color'
wp option delete 'scrollhighlight_color'
wp option delete 'scrollhighlight_opacity'
wp option delete 'scrollhighlight_offset_type'
wp option delete 'scrollhighlight_offset'

