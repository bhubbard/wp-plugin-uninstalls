#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'ai4seo_last_contact_form_submit_timestamp'

# Clear Cron Jobs
wp cron event delete 'ai4seo_search_missing_seo_data_posts'
wp cron event delete 'ai4seo_search_missing_metadata_posts'
wp cron event delete 'ai4seo_automated_seo_data_generation'
wp cron event delete 'ai4seo_automated_metadata_generation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-page-items-seo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-page-items-seo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-page-items-seo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-page-items-seo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slim_seo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slim_seo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slim_seo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slim_seo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_b2s_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_b2s_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_b2s_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_b2s_post_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
