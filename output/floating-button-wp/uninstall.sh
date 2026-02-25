#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'set_flbtn_bg'
wp option delete 'set_flbtn_color'
wp option delete 'set_flbtn_txt'
wp option delete 'set_close_txt'
wp option delete 'set_flbtn_active'

