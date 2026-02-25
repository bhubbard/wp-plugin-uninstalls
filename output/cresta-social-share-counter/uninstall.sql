-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cresta_social_shares_facebook_appid', 'cresta_social_shares_facebook_appsecret', 'cresta_social_shares_cache_period', 'cresta_social_shares_store_meta', 'cresta_social_shares_selected_page', 'cresta_social_shares_http_https_both', 'cresta_social_shares_show_counter', 'cresta_social_shares_show_floatbutton', 'cresta_social_shares_google_font', 'selected_button', 'cresta_social_shares_show_ifmorezero', 'cresta_social_shares_show_ifmorenumber', 'cresta_social_shares_float', 'cresta_social_shares_float_buttons', 'cresta_social_shares_style', 'cresta_social_shares_position_top', 'cresta_social_shares_position_left', 'cresta_social_shares_twitter_username', 'cresta_social_shares_twitter_new_logo', 'cresta_social_shares_show_total', 'cresta_social_shares_total_text', 'cresta_social_shares_disable_mobile', 'cresta_social_shares_enable_animation', 'cresta_social_shares_enable_samecolors', 'cresta_social_shares_before_content', 'cresta_social_shares_after_content', 'cresta_social_shares_show_credit', 'cresta_social_shares_enable_shadow', 'cresta_social_shares_enable_shadow_buttons', 'cresta_social_shares_z_index', 'cresta_social_shares_button_hide_show', 'cresta_social_shares_custom_css', 'cresta_social_shares_twitter_shares_two', 'cresta_social_shares_twitter_shares_three', 'cresta_social_shares_pintmode', 'cresta_social_shares_linkedin_alternative_count', 'cresta_social_shares_twitter_shares');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cresta_facebook_share_count', '_get_cresta_plugin');
DELETE FROM wp_usermeta WHERE meta_key IN ('cresta_facebook_share_count', '_get_cresta_plugin');
DELETE FROM wp_termmeta WHERE meta_key IN ('cresta_facebook_share_count', '_get_cresta_plugin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cresta_facebook_share_count', '_get_cresta_plugin');

