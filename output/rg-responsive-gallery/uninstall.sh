#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rrg_mode'
wp option delete 'rrg_autostart'
wp option delete 'rrg_captions'
wp option delete 'rrg_controls'
wp option delete 'rrg_pager'
wp option delete 'rrg_infiniteLoop'
wp option delete 'rrg_speed'
wp option delete 'rrg_style_css'
wp option delete 'rrg_active'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rrg_image_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rrg_image_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rrg_image_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rrg_image_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rrg_image_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rrg_image_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rrg_image_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rrg_image_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rrg_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rrg_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rrg_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rrg_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rrg_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rrg_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rrg_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rrg_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rrg_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rrg_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rrg_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rrg_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rrg_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rrg_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rrg_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rrg_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rrg_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rrg_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rrg_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rrg_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rrg_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rrg_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rrg_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rrg_url'"
