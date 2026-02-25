#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'athemes-addons-settings'
wp option delete 'athemes_addons_installed_time'
wp option delete 'athemes-addons-modules'
wp option delete 'athemes-addons-elementor'

# Delete Transients
wp transient delete 'athemes_addons_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aafe_custom_js_%' OR option_name LIKE '_site_transient_aafe_custom_js_%'"
wp transient delete 'athemes_addons_theme_builder_flushed_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'athemes_addons_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'athemes_addons_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'athemes_addons_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'athemes_addons_dashboard_notifications_latest_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'athemes_addons_disable_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'athemes_addons_disable_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'athemes_addons_disable_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'athemes_addons_disable_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delay_athemes_addons_disable_review_notice_partially'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delay_athemes_addons_disable_review_notice_partially'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delay_athemes_addons_disable_review_notice_partially'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delay_athemes_addons_disable_review_notice_partially'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahf_template_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahf_template_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahf_template_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahf_template_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahf_header_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahf_header_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahf_header_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahf_header_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ahf_display_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ahf_display_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ahf_display_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ahf_display_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahf_hook_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahf_hook_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahf_hook_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahf_hook_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahf_hook_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahf_hook_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahf_hook_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahf_hook_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahf_merge_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahf_merge_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahf_merge_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahf_merge_header'"
