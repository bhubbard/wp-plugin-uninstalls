#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kiwi_backup_option'
wp option delete 'kiwi_general_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'kiwi_settings'
wp option delete 'kiwi_network_colors'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_short_link_transient' OR option_name LIKE '_site_transient_%_short_link_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_share_count_transient' OR option_name LIKE '_site_transient_%_share_count_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_css_transient' OR option_name LIKE '_site_transient_%_css_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_message' OR option_name LIKE '_site_transient_%_license_message'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_social-media-pinterest-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_social-media-pinterest-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_social-media-pinterest-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_social-media-pinterest-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_social-media-pinterest-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_social-media-pinterest-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_social-media-pinterest-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_social-media-pinterest-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_social-media-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_social-media-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_social-media-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_social-media-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_social-media-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_social-media-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_social-media-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_social-media-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_social-media-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_social-media-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_social-media-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_social-media-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_social-media-custom-tweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_social-media-custom-tweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_social-media-custom-tweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_social-media-custom-tweet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_shortcode_networks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_shortcode_networks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_shortcode_networks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_shortcode_networks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_shortcode_bar_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_shortcode_bar_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_shortcode_bar_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_shortcode_bar_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kiwi_shortcode_list_item_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kiwi_shortcode_list_item_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kiwi_shortcode_list_item_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kiwi_shortcode_list_item_style'"
