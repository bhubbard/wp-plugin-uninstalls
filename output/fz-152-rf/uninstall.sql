-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('f152_enabled', 'f152_banner_text', 'f152_site_url', 'f152_company_name', 'f152_company_inn', 'f152_company_email', 'f152_ym_counter', 'f152_popup_upper', 'f152_popup_func', 'f152_popup_anal', 'f152_popup_mark', 'f152_link_policy_pd', 'f152_link_consent_pd', 'f152_link_policy_cookie', 'f152_link_consent_marketing', 'f152_comment_enable', 'f152_comment_text', 'f152_reviews_enable', 'f152_reviews_text', 'f152_checkout_enable', 'f152_checkout_text', 'f152_cookie_domain', 'f152_theme', 'f152_color_bg', 'f152_color_text', 'f152_color_link', 'f152_color_btn_bg', 'f152_color_btn_text', 'f152_btn_settings_view', 'f152_seed_main_defaults_done', 'f152_btn_radius', 'f152_color_btn_accept_bg', 'f152_color_btn_accept_text', 'f152_color_btn_settings_bg', 'f152_color_btn_settings_text', 'f152_color_btn_reject_bg', 'f152_color_btn_reject_text', 'f152_ym_behavior', 'f152_ym_disable_on_reject');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('f152_consent', '_f152_consent');
DELETE FROM wp_usermeta WHERE meta_key IN ('f152_consent', '_f152_consent');
DELETE FROM wp_termmeta WHERE meta_key IN ('f152_consent', '_f152_consent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('f152_consent', '_f152_consent');

