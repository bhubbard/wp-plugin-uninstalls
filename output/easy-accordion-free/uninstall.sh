#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_eap_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'sp_eafree_review_notice_dismiss'
wp option delete 'sp_eap_flush_rewrite_rules'
wp option delete 'easy_accordion_free_version'
wp option delete 'easy_accordion_free_first_version'
wp option delete 'easy_accordion_free_activation_date'
wp option delete 'easy_accordion_free_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_accordion_page_id%'"
wp option delete '_transient_timeout_sp-eap-framework-transient'
wp option delete '_transient_sp-eap-framework-transient'
wp option delete '_transient_timeout_eapro-metabox-transient'
wp option delete '_transient_eapro-metabox-transient'
wp option delete '_transient_timeout_spf-eap-framework-transient'
wp option delete '_transient_spf-eap-framework-transient'
wp option delete 'shapedplugin_offer_banner_dismissed_black_friday_2025'
wp option delete 'shapedplugin_offer_banner_dismissed_new_year_2026'

# Delete Transients
wp transient delete 'spea_plugins_data'
wp transient delete 'spea_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_eap_upload_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_eap_upload_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_eap_upload_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_eap_upload_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_eap_shortcode_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_eap_shortcode_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_eap_shortcode_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_eap_shortcode_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_eapro_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_eapro_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_eapro_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_eapro_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
