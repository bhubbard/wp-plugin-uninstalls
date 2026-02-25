#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'akp_auth_role'
wp option delete 'akp_custom_css'
wp option delete 'akp_image_sizes'
wp option delete 'akp_ga_implemented'
wp option delete 'akp_ga_imp_action'
wp option delete 'akp_ga_click_action'
wp option delete 'akp_default_media_type'
wp option delete 'akp_default_remove_link'
wp option delete 'akp_default_window_target'
wp option delete 'akp_default_nofollow'
wp option delete 'apk_db_version'
wp option delete 'akp_ga_intergrated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'akp_advert_type_%'"
wp option delete 'akp_track_impressions'
wp option delete 'revenue_currency'
wp option delete 'week_starts'
wp option delete 'akp_track_clicks'
wp option delete 'akp_default_rev_imp'
wp option delete 'akp_default_rev_click'
wp option delete 'akp_clear_on_delete'
wp option delete 'expiry_time'
wp option delete 'pdf_theme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_ga_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_ga_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_ga_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_ga_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_ga_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_ga_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_ga_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_ga_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_media_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_media_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_media_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_media_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_rollover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_rollover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_rollover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_rollover_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_flash_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_flash_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_flash_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_flash_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_flash_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_flash_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_flash_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_flash_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_flash_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_flash_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_flash_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_flash_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_remove_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_remove_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_remove_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_remove_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_nofollow'"
