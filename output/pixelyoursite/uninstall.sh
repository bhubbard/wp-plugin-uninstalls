#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'free_next_chain_notice'
wp option delete 'free_expiration_chain_notice_dismissed_at'
wp option delete 'pys_core_opted_in_dismissed_at'
wp option delete 'pys_core_optin_first_time_dismissed_at'
wp option delete 'pys_core_optin_second_time_dismissed_at'
wp option delete 'elementor_woocommerce_purchase_summary_page_id'
wp option delete '_pixel_cost_of_goods_cost_type'
wp option delete '_pixel_cost_of_goods_cost_val'
wp option delete '_pixel_cog_tax_calculating'
wp option delete 'cs_product_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_check_license'"
wp option delete 'pys_core_free_version'
wp option delete 'pys_custom_event_migrate_free'
wp option delete 'pys_updated_at'
wp option delete 'pys_free_current_promo_notices_set'
wp option delete 'pixel_your_site'
wp option delete 'pys_free_promo_notices_start_time'
wp option delete 'pys_free_current_promo_notice_key'
wp option delete 'pys_free_promo_notice_dismissed_at'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_prices_include_tax'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_externalId-%' OR option_name LIKE '_site_transient_externalId-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pys_event_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pys_event_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pys_event_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pys_event_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pys_event_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pys_event_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pys_event_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pys_event_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pys_event_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pys_event_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pys_event_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pys_event_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pys_event_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pys_event_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pys_event_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pys_event_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_complete_registration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_complete_registration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_complete_registration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_complete_registration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_next_chain_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_next_chain_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_next_chain_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_next_chain_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_core_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_core_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_core_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_core_opted_in_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_core_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_core_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_core_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_core_optin_first_time_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_core_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_core_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_core_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_core_optin_second_time_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_just_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_just_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_just_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_just_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_enrich_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pys_purchase_event_fired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pys_purchase_event_fired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pys_purchase_event_fired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pys_purchase_event_fired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_free_current_promo_notices_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_free_current_promo_notices_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_free_current_promo_notices_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_free_current_promo_notices_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_free_current_promo_notice_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_free_current_promo_notice_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_free_current_promo_notice_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_free_current_promo_notice_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_free_promo_notice_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_free_promo_notice_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_free_promo_notice_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_free_promo_notice_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socplug_social_id_Facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socplug_social_id_Facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socplug_social_id_Facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socplug_social_id_Facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pys_fb_cookie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pys_fb_cookie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pys_fb_cookie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pys_fb_cookie'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pys_head_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pys_head_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pys_head_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pys_head_footer'"
