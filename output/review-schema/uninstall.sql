-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtrs_activation_redirect', 'rtrs_queue_flush_rewrite_rules', 'rtrs_schema_settings', 'rtrs_schema_social_profiles_settings', 'rtrs_schema_corporate_contacts_settings', 'rtrs_schema_tpp_settings', 'rtrs_black_friday_offer_2024', 'rtrs_ny_offer_2024', 'rtrs_plugin_activation_time', 'rtrs_spare_me', 'rtrs_remind_me', 'rtrs_rated', 'woocommerce_review_rating_verification_required', 'rtrs_schema_sitelink_settings', 'rtrs_schema_sub_organization_settings', 'rtrs_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE 'dismiss_bf_review_schema_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rtrs_post_type', 'rtrs_support', '_rtrs_sc_tab', 'rt_rating_criteria', 'rating', 'rt_title', 'rt_recommended', 'rt_pros_cons', 'rt_attachment', 'attach_type', 'rt_highlight', 'rt_anonymous', 'rtrs_affiliate', 'rtrs_summary_layout', 'rtrs_page_id', 'multi_criteria', 'rt_sticky_review', 'rtrs_avg_rating', '_rtrs_custom_rich_snippet', '_rtrs_disable_snippet_generator', '_rtrs_rich_snippet_cat', 'layout', 'parent_class', 'total_rating', 'avg_rating', 'recommendation', 'title', 'short_desc', 'featured_image', 'rating_criteria', 'pros', 'cons', 'offer_price', 'regular_price', 'btn_txt', 'btn_url', 'open_in_new_tab', 'rich_snippet');
DELETE FROM wp_usermeta WHERE meta_key IN ('rtrs_post_type', 'rtrs_support', '_rtrs_sc_tab', 'rt_rating_criteria', 'rating', 'rt_title', 'rt_recommended', 'rt_pros_cons', 'rt_attachment', 'attach_type', 'rt_highlight', 'rt_anonymous', 'rtrs_affiliate', 'rtrs_summary_layout', 'rtrs_page_id', 'multi_criteria', 'rt_sticky_review', 'rtrs_avg_rating', '_rtrs_custom_rich_snippet', '_rtrs_disable_snippet_generator', '_rtrs_rich_snippet_cat', 'layout', 'parent_class', 'total_rating', 'avg_rating', 'recommendation', 'title', 'short_desc', 'featured_image', 'rating_criteria', 'pros', 'cons', 'offer_price', 'regular_price', 'btn_txt', 'btn_url', 'open_in_new_tab', 'rich_snippet');
DELETE FROM wp_termmeta WHERE meta_key IN ('rtrs_post_type', 'rtrs_support', '_rtrs_sc_tab', 'rt_rating_criteria', 'rating', 'rt_title', 'rt_recommended', 'rt_pros_cons', 'rt_attachment', 'attach_type', 'rt_highlight', 'rt_anonymous', 'rtrs_affiliate', 'rtrs_summary_layout', 'rtrs_page_id', 'multi_criteria', 'rt_sticky_review', 'rtrs_avg_rating', '_rtrs_custom_rich_snippet', '_rtrs_disable_snippet_generator', '_rtrs_rich_snippet_cat', 'layout', 'parent_class', 'total_rating', 'avg_rating', 'recommendation', 'title', 'short_desc', 'featured_image', 'rating_criteria', 'pros', 'cons', 'offer_price', 'regular_price', 'btn_txt', 'btn_url', 'open_in_new_tab', 'rich_snippet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rtrs_post_type', 'rtrs_support', '_rtrs_sc_tab', 'rt_rating_criteria', 'rating', 'rt_title', 'rt_recommended', 'rt_pros_cons', 'rt_attachment', 'attach_type', 'rt_highlight', 'rt_anonymous', 'rtrs_affiliate', 'rtrs_summary_layout', 'rtrs_page_id', 'multi_criteria', 'rt_sticky_review', 'rtrs_avg_rating', '_rtrs_custom_rich_snippet', '_rtrs_disable_snippet_generator', '_rtrs_rich_snippet_cat', 'layout', 'parent_class', 'total_rating', 'avg_rating', 'recommendation', 'title', 'short_desc', 'featured_image', 'rating_criteria', 'pros', 'cons', 'offer_price', 'regular_price', 'btn_txt', 'btn_url', 'open_in_new_tab', 'rich_snippet');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rt_helpful_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rt_helpful_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rt_helpful_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rt_helpful_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_schema';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_schema';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_schema';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_schema';

