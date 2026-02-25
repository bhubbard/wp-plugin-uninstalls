#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcscm_enable'
wp option delete 'wcscm_shope_page'
wp option delete 'wcscm-inlinecss'
wp option delete 'wcscm_0_order_text'
wp option delete 'wcscm_after_single'
wp option delete 'wcscm_text'
wp option delete 'wcscm_text_color'
wp option delete 'wcscm_count_color'
wp option delete 'wcscm_bg_color'
wp option delete 'wcscm_social_buttons'
wp option delete 'wcscm_after_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
