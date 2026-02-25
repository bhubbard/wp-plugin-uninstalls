-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easypanel_offer_showcase_plugin_language', 'easypanel_offer_showcase_quiz_activation_date', 'easypanel_offer_showcase_primary_color', 'easypanel_offer_showcase_secondary_color', 'easypanel_offer_showcase_text_color', 'easypanel_offer_showcase_button_text', 'easypanel_offer_showcase_columns', 'easypanel_offer_showcase_currency', 'easypanel_offer_showcase_border_radius', 'easypanel_offer_showcase_card_padding', 'easypanel_offer_showcase_button_radius', 'easypanel_offer_showcase_grid_gap', 'easypanel_offer_showcase_badge_color', 'easypanel_offer_showcase_bestseller_border_color', 'easypanel_offer_showcase_bestseller_border_width', 'easypanel_offer_showcase_header_alignment', 'easypanel_offer_showcase_body_alignment', 'easypanel_offer_showcase_quiz_completed', 'easypanel_offer_showcase_quiz_last_shown', 'easypanel_offer_showcase_quiz_result', 'easypanel_offer_showcase_lang_changed_notice', 'easypanel_offer_showcase_settings_saved_notice', 'easypanel_offer_showcase_quiz_error', 'easypanel_offer_showcase_quiz_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_easypanel_offer_showcase_supertitle', '_easypanel_offer_showcase_show_badge', '_easypanel_offer_showcase_badge_color', '_easypanel_offer_showcase_price', '_easypanel_offer_showcase_description', '_easypanel_offer_showcase_button_url', '_easypanel_offer_showcase_price_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_easypanel_offer_showcase_supertitle', '_easypanel_offer_showcase_show_badge', '_easypanel_offer_showcase_badge_color', '_easypanel_offer_showcase_price', '_easypanel_offer_showcase_description', '_easypanel_offer_showcase_button_url', '_easypanel_offer_showcase_price_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_easypanel_offer_showcase_supertitle', '_easypanel_offer_showcase_show_badge', '_easypanel_offer_showcase_badge_color', '_easypanel_offer_showcase_price', '_easypanel_offer_showcase_description', '_easypanel_offer_showcase_button_url', '_easypanel_offer_showcase_price_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_easypanel_offer_showcase_supertitle', '_easypanel_offer_showcase_show_badge', '_easypanel_offer_showcase_badge_color', '_easypanel_offer_showcase_price', '_easypanel_offer_showcase_description', '_easypanel_offer_showcase_button_url', '_easypanel_offer_showcase_price_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

