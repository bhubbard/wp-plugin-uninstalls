#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vsf_block_version'
wp option delete 'vsf_block_bounce_address'
wp option delete 'vsf_block_max_hits_in_one_minute'
wp option delete 'vsf_block_max_hits_in_two_minute'
wp option delete 'vsf_block_max_hits_in_five_minute'
wp option delete 'vsf_block_init_hook_added'
wp option delete 'vsf_block_admin_panel_hook_added'
wp option delete 'vsf_block_auto_block'
wp option delete 'vsf_block_table_items_quantity'
wp option delete 'vsf_block_hits_table_version'
wp option delete 'vsf_block_table_version'
wp option delete 'vsf_block_rules_table_version'
wp option delete 'vsf_block_url_table_version'
wp option delete 'vsf_block_cookie_rules'
wp option delete 'vsf_block_cookie_urls'
wp option delete 'vsf_block_cookie_expire_time'
wp option delete 'vsf_stats_version'

