#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'winden_dplugins_editor'
wp option delete 'winden_dplugins_cache'
wp option delete 'winden_dplugins_wizzard_state'
wp option delete 'winden_v4_notice_dismissed'
wp option delete 'winden_dplugins_options'
wp option delete 'winden_dplugins_clear_cache_flag'
wp option delete 'winden_option_name'
wp option delete 'winden_dplugins_breakpoint_indicator_enabled'
wp option delete 'winden_cache_status'
wp option delete 'winden_split_mode'
wp option delete 'winden_post_classes_index'
wp option delete 'winden_crawled_classes'
wp option delete 'winden_last_crawl_time'
wp option delete 'winden_needs_recompile'
wp option delete 'bricks_global_settings'
wp option delete 'bricks_color_palette'
wp option delete 'bricks_breakpoints'
wp option delete 'oxygen_vsb_global_colors'

# Delete Transients
wp transient delete 'winden_compiled_css_mtime'

# Clear Cron Jobs
wp cron event delete 'winden_async_crawl'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_funculo_block_php'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_funculo_block_php'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_funculo_block_php'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_funculo_block_php'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_funculo_block_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_funculo_block_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_funculo_block_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_funculo_block_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_funculo_symbol_php'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_funculo_symbol_php'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_funculo_symbol_php'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_funculo_symbol_php'"
