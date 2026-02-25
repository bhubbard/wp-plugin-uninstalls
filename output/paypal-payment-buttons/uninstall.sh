#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stats_options'
wp option delete 'jetpack_activation_source'
wp option delete 'jetpack_affiliate_code'
wp option delete 'jetpack_partner_subsidiary_id'
wp option delete 'jetpack_offline_mode'
wp option delete 'vaultpress'
wp option delete 'vaultpress_auto_register'
wp option delete 'jetpack_sso_remove_login_form'
wp option delete 'jetpack_sso_match_by_email'
wp option delete 'jetpack_sso_require_two_step'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'has_jetpack_search_product'

# Delete Transients
wp transient delete 'jetpack_assumed_site_creation_date'
wp transient delete 'jetpack_idc_possible_dynamic_site_url_detected'
wp transient delete 'jetpack_idc_local'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_idc_ip_requester_%' OR option_name LIKE '_site_transient_jetpack_idc_ip_requester_%'"
wp transient delete 'jetpack_is_single_user'

# Clear Cron Jobs
wp cron event delete 'jetpack_heartbeat'
wp cron event delete 'jetpack_clean_nonces'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_multiple'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_cta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spay_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spay_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spay_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spay_email'"
