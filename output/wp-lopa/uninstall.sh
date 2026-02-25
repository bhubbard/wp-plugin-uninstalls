#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lopa_show_before'
wp option delete 'lopa_before_id'
wp option delete 'lopa_show_after'
wp option delete 'lopa_after_id'
wp option delete 'lopa_show_links'
wp option delete 'lopa_show_prevnext'
wp option delete 'lopa_prev_text'
wp option delete 'lopa_next_text'
wp option delete 'lopa_switch_home'
wp option delete 'lopa_switch_date'
wp option delete 'lopa_switch_search'
wp option delete 'lopa_switch_category'
wp option delete 'lopa_switch_tag'
wp option delete 'lopa_switch_author'
wp option delete 'lopa_show_css'

