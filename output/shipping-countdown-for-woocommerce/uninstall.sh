#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scfwc_time'
wp option delete 'scfwc_title'
wp option delete 'scfwc_select_days'
wp option delete 'scfwc_render_location'

