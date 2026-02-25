#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_cb_height'
wp option delete 'fs_position'
wp option delete 'fs_active_fs_hit_column'
wp option delete 'fs_skip_single'
wp option delete 'fs_single_posts'
wp option delete 'fs_single_pages'
wp option delete 'fs_home'
wp option delete 'fs_search'
wp option delete 'fs_archive'
wp option delete 'fs_active_align'
wp option delete 'fs_design'
wp option delete 'fs_active_counter'
wp option delete 'fs_active_flatmix'
wp option delete 'fs_active_big'
wp option delete 'fs_intro_height'
wp option delete 'fs_intro_text'
wp option delete 'fs_facebook_share'
wp option delete 'fs_twitter_share'
wp option delete 'fs_flattr_share'
wp option delete 'fs_digg_share'
wp option delete 'fs_delicious_share'
wp option delete 'fs_gplus_share'
wp option delete 'fs_xing_share'
wp option delete 'fs_linkedin_share'
wp option delete 'fs_pinterest_share'
wp option delete 'fs_stumbleupon_share'
wp option delete 'fs_tumblr_share'
wp option delete 'fs_whatsapp_share'
wp option delete 'fs_pocket_share'
wp option delete 'fs_feedly_share'
wp option delete 'fs_active_sharebar'
wp option delete 'fs_active_post_stats'
wp option delete 'fs_active_privacy'
wp option delete 'fs_deactivate_supportlink'
wp option delete 'fs_privacy_text'
wp option delete 'fs_privacy_link_intro'
wp option delete 'fs_twitter_text'
wp option delete 'fs_flattr_id'
wp option delete 'altimg'
wp option delete 'fs_categories'
wp option delete 'fs_altimg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fs_post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fs_post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fs_post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fs_post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
