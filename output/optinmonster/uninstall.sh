#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optin_monster_api'
wp option delete 'optinmonster_current_upgrade'
wp option delete 'optinmonster_upgrade_completed'
wp option delete 'optinmonster_site_token'
wp option delete 'optinmonster_constant_contact_dismiss'
wp option delete 'optinmonster_sas_id'
wp option delete 'optinmonster_affwp_id'
wp option delete 'optinmonster_trial_id'
wp option delete 'optinmonster_referred_by'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'trustpulse_api_plugin_do_activation_redirect'
wp option delete 'duplicator_redirect_to_welcome'
wp option delete 'trustpulse_script_id'
wp option delete 'omapi_review'
wp option delete 'optin_monster_api_activation_redirect_disabled'

# Delete Transients
wp transient delete 'om_notification_count'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete '_omapi_validate'
wp transient delete 'optin_monster_api_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'om_disable_all_campaigns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'om_disable_all_campaigns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'om_disable_all_campaigns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'om_disable_all_campaigns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_om_revenue_attribution_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_om_revenue_attribution_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_om_revenue_attribution_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_om_revenue_attribution_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_om_revenue_attribution_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_om_revenue_attribution_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_om_revenue_attribution_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_om_revenue_attribution_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_mailpoet_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_mailpoet_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_mailpoet_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_mailpoet_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_mailpoet_mapped_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_mailpoet_mapped_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_mailpoet_mapped_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_mailpoet_mapped_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_mailpoet_fields_auto_create'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_mailpoet_fields_auto_create'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_mailpoet_fields_auto_create'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_mailpoet_fields_auto_create'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_mailpoet_phone_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_mailpoet_phone_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_mailpoet_phone_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_mailpoet_phone_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_mailpoet_optin_fields_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_mailpoet_optin_fields_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_mailpoet_optin_fields_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_mailpoet_optin_fields_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_auto_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_auto_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_auto_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_auto_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_auto_location_paragraphs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_auto_location_paragraphs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_auto_location_paragraphs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_auto_location_paragraphs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_auto_location_words'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_auto_location_words'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_auto_location_words'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_auto_location_words'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_mailpoet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_mailpoet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_mailpoet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_mailpoet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_shortcode_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_shortcode_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_shortcode_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_shortcode_output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_omapi_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_omapi_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_omapi_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_omapi_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_automatic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_automatic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_automatic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_automatic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_never'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_never'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_never'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_never'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_taxonomies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_taxonomies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_taxonomies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_taxonomies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omapi_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omapi_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omapi_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omapi_test'"
