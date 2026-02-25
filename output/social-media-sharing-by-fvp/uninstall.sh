#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fvp_sm_share_posts_active'
wp option delete 'fvp_sm_share_front_page_active'
wp option delete 'fvp_sm_share_pages_active'
wp option delete 'fvp_sm_sharing_items_order'
wp option delete 'fvp_sm_buttons_type'
wp option delete 'fvp_sm_buttons_text'
wp option delete 'fvp_sm_buttons_place'

