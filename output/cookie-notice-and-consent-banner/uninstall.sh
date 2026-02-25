#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cncb_show_banner'
wp option delete 'cncb_custom_css'
wp option delete 'cncb_refuse_code'
wp option delete 'cncb_refuse_code_body'
wp option delete 'cncb_by_scroll'
wp option delete 'cncb_by_click'
wp option delete 'cncb_by_delay'
wp option delete 'cncb_refreshonallow'
wp option delete 'cncb_by_scroll_value'
wp option delete 'cncb_by_delay_value'

# Delete Transients
wp transient delete 'cncb_admin_notice'

