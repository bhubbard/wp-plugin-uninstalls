#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lkn_crowdfunding_custom_template_id'
wp option delete 'woocommerce_permalinks'
wp option delete 'lkn_custom_rewrite_rules'
wp option delete 'woocommerce_placeholder_image'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_custom_email_verification_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_send_email_verification_%'"
wp option delete 'wpcf_redurl'
wp option delete 'lkn_wpcf_redurl_falha_email'
wp option delete 'lkn_wpcf_redurl_envio_email'
wp option delete 'lkn_wpcf_email_is_username'
wp option delete 'lkn_wpcf_registro_por_validacao'
wp option delete 'woocommerce_enable_reviews'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
