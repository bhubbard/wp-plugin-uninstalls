#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fshare_skip_single'
wp option delete 'fs_single_pages'
wp option delete 'fs_single_posts'
wp option delete 'fs_active_align'
wp option delete 'fs_intro_height'
wp option delete 'fs_intro_text'
wp option delete 'fs_facebook_share'
wp option delete 'fs_twitter_share'
wp option delete 'fs_xing_share'
wp option delete 'fs_pinterest_share'
wp option delete 'fs_whatsapp_share'
wp option delete 'fs_pocket_share'
wp option delete 'fs_feedly_share'
wp option delete 'fs_active_privacy'
wp option delete 'fs_deactivate_supportlink'
wp option delete 'fs_position'
wp option delete 'fs_privacy_text'
wp option delete 'fs_privacy_link_intro'

