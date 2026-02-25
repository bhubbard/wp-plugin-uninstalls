#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weeblramp_last_amp_suffix'
wp option delete 'weeblramp_last_op_mode'
wp option delete 'weeblramp_last_post_types_hash'
wp option delete 'disqus_forum_url'
wp option delete 'weeblramp_rewrite_rules_flush_required'
wp option delete 'weeblramp_activation_plugin_manager_errors'
wp option delete 'weeblramp_current_stylesheet'
wp option delete 'weeblramp_current_template'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'wblib_logging_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbamp_enable_amp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbamp_enable_amp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbamp_enable_amp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbamp_enable_amp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
