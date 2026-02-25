#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'full_adaptive'
wp option delete 'medium_crop'
wp option delete 'large_crop'
wp option delete 'medium_adaptive'
wp option delete 'large_adaptive'
wp option delete 'full_size_w'
wp option delete 'full_size_h'
wp option delete 'scissors_watermark_path'
wp option delete 'scissors_crop_defaultaspect'
wp option delete 'scissors_crop_useraspectx'
wp option delete 'scissors_crop_useraspecty'
wp option delete 'scissors_crop_defaultreir'
wp option delete 'scissors_watermark_size'
wp option delete 'scissors_watermark_size_relative'
wp option delete 'scissors_watermark_halign'
wp option delete 'scissors_watermark_valign'
wp option delete 'scissors_watermark_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scissors_activation_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scissors_activation_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scissors_activation_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scissors_activation_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scissors_watermarking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scissors_watermarking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scissors_watermarking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scissors_watermarking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scissors_watermarking_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scissors_watermarking_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scissors_watermarking_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scissors_watermarking_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scissors_custom_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scissors_custom_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scissors_custom_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scissors_custom_images'"
