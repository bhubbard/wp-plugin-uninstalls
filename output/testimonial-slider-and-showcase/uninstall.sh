#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rttss_ny_2022'
wp option delete 'rttss_bf_2021'
wp option delete 'rttss_plugin_activation_time'
wp option delete 'rttss_spare_me'
wp option delete 'rttss_remind_me'
wp option delete 'rttss_rated'
wp option delete 'rtts_activation_redirect'
wp option delete 'elementor_experiment-e_swiper_latest'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rtts_sc_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rtts_sc_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rtts_sc_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rtts_sc_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_social_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_social_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_social_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_social_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_custom_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_custom_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_custom_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_custom_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_author_name_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_author_name_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_author_name_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_author_name_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tss_author_bio_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tss_author_bio_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tss_author_bio_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tss_author_bio_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order'"
