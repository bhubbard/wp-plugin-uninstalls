-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lkn_crowdfunding_custom_template_id', 'woocommerce_permalinks', 'lkn_custom_rewrite_rules', 'woocommerce_placeholder_image', 'wpcf_redurl', 'lkn_wpcf_redurl_falha_email', 'lkn_wpcf_redurl_envio_email', 'lkn_wpcf_email_is_username', 'lkn_wpcf_registro_por_validacao', 'woocommerce_enable_reviews');
DELETE FROM wp_options WHERE option_name LIKE 'lkn_custom_email_verification_%';
DELETE FROM wp_options WHERE option_name LIKE 'lkn_send_email_verification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpneo_campaign_end_method', 'loved_campaign_ids', 'is_email_verified', 'wpcf_predefined_pledge_amount', '_product_image_gallery', 'wpneo_country', '_nf_location', '_nf_funding_goal', '_nf_duration_end', 'billing_city', 'billing_state', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpneo_campaign_end_method', 'loved_campaign_ids', 'is_email_verified', 'wpcf_predefined_pledge_amount', '_product_image_gallery', 'wpneo_country', '_nf_location', '_nf_funding_goal', '_nf_duration_end', 'billing_city', 'billing_state', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpneo_campaign_end_method', 'loved_campaign_ids', 'is_email_verified', 'wpcf_predefined_pledge_amount', '_product_image_gallery', 'wpneo_country', '_nf_location', '_nf_funding_goal', '_nf_duration_end', 'billing_city', 'billing_state', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpneo_campaign_end_method', 'loved_campaign_ids', 'is_email_verified', 'wpcf_predefined_pledge_amount', '_product_image_gallery', 'wpneo_country', '_nf_location', '_nf_funding_goal', '_nf_duration_end', 'billing_city', 'billing_state', 'billing_country');

