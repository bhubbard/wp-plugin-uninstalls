-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vatdi_ai_chat_agent_site_key', 'vatdi_ai_chat_agent_site_secret', 'vatdi_ai_chat_agent_widget_enabled', 'vatdi_ai_chat_agent_dashboard_url', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_store_address_email', 'woocommerce_store_address_phone', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'vatdi_connect_nonce', 'vatdi_ai_chat_agent_connection_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_description', 'rank_math_canonical_url', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_canonical', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_menu_modified', '_wp_attachment_image_alt', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_description', 'rank_math_canonical_url', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_canonical', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_menu_modified', '_wp_attachment_image_alt', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_description', 'rank_math_canonical_url', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_canonical', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_menu_modified', '_wp_attachment_image_alt', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_description', 'rank_math_canonical_url', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_canonical', '_yoast_wpseo_opengraph-title', '_yoast_wpseo_opengraph-description', '_yoast_wpseo_opengraph-image', '_menu_modified', '_wp_attachment_image_alt', 'rating');

