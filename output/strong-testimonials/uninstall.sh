#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmtst_admin_notices'
wp option delete 'wpmtst_plugin_version'
wp option delete 'wpmtst_options'
wp option delete 'wpmtst_config_errors'
wp option delete 'wpmtst-challenge'
wp option delete 'wpmtst_view_options'
wp option delete 'strong-testimonials-rate-time'
wp option delete 'wpmtst_history'
wp option delete 'wpmtst_fields'
wp option delete 'wpmtst_base_forms'
wp option delete 'wpmtst_custom_forms'
wp option delete 'wpmtst_form_options'
wp option delete 'wpmtst_compat_options'
wp option delete 'wpmtst_view_default'
wp option delete 'wpmtst_cycle'
wp option delete 'wpmtst_l10n_contexts'
wp option delete 'wpmtst_news_flag'
wp option delete 'wpmtst_addons'
wp option delete 'wpmtst_update_log'
wp option delete 'wpmtst_db_version'
wp option delete 'strong_testimonials_license_key'
wp option delete 'strong_testimonials_license_status'
wp option delete 'wpmtst_sticky_views'
wp option delete 'hicpo_options'
wp option delete 'scporder_options'
wp option delete 'strong_testimonials_advanced_settings'
wp option delete 'sidebars_widgets'
wp option delete 'widget_strong-testimonials-view-widget'
wp option delete 'widget_custom_html'
wp option delete 'widget_black-studio-tinymce'
wp option delete 'wpmtst_importer_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'strong_testimonials_all_extensions'
wp transient delete 'wpmtst_update_in_progress'
wp transient delete 'strong-testimonials_upgradable_packages'
wp transient delete 'wpmtst_mail_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'platform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'platform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'platform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'platform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'submit_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'submit_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'submit_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'submit_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_wpm-testimonial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_wpm-testimonial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_wpm-testimonial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_wpm-testimonial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noopener'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noreferrer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'strong_view_list_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'strong_view_list_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'strong_view_list_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'strong_view_list_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'platform_user_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'platform_user_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'platform_user_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'platform_user_photo'"
