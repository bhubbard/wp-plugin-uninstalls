#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wphcu_display_footer'
wp option delete 'wphcu_data'
wp option delete 'wphcu_count_404'
wp option delete 'wphcu_count_only_unique'
wp option delete 'wphcu_count_admin'
wp option delete 'wphcu_exclude_ips'
wp option delete 'wphcu_style'
wp option delete 'wphcu_align'
wp option delete 'wphcu_css'
wp option delete 'wphcu_display_credit'
wp option delete 'wphcu_check_update'
wp option delete 'wphcu_algin'

