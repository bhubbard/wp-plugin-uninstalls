#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shop_page_id'
wp option delete 'generateblocks_dynamic_css_time'
wp option delete 'generateblocks_dynamic_css_posts'
wp option delete 'generateblocks_version'
wp option delete 'generateblocks'
wp option delete 'gb_use_v1_blocks'
wp option delete 'generate_settings'
wp option delete 'generateblocks_do_activation_redirect'
wp option delete 'widget_block'
wp option delete 'generateblocks_pattern_libraries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-patterns_0'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_0' OR option_name LIKE '_site_transient_%_0'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generateblocks_dynamic_css_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generateblocks_reusable_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generateblocks_reusable_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generateblocks_reusable_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generateblocks_reusable_blocks'"
