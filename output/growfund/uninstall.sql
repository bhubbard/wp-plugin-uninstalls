-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%installed_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery', 'wpneo_funding_video', '_nf_duration_start', '_nf_duration_end', '_nf_location', 'wpneo_show_contributor_table', '_nf_funding_goal', 'wpcf_predefined_pledge_amount', 'wpneo_funding_minimum_price', 'wpneo_funding_maximum_price', 'wpneo_reward', 'wpneo_campaign_updates', 'wpneo_selected_reward');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery', 'wpneo_funding_video', '_nf_duration_start', '_nf_duration_end', '_nf_location', 'wpneo_show_contributor_table', '_nf_funding_goal', 'wpcf_predefined_pledge_amount', 'wpneo_funding_minimum_price', 'wpneo_funding_maximum_price', 'wpneo_reward', 'wpneo_campaign_updates', 'wpneo_selected_reward');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery', 'wpneo_funding_video', '_nf_duration_start', '_nf_duration_end', '_nf_location', 'wpneo_show_contributor_table', '_nf_funding_goal', 'wpcf_predefined_pledge_amount', 'wpneo_funding_minimum_price', 'wpneo_funding_maximum_price', 'wpneo_reward', 'wpneo_campaign_updates', 'wpneo_selected_reward');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery', 'wpneo_funding_video', '_nf_duration_start', '_nf_duration_end', '_nf_location', 'wpneo_show_contributor_table', '_nf_funding_goal', 'wpcf_predefined_pledge_amount', 'wpneo_funding_minimum_price', 'wpneo_funding_maximum_price', 'wpneo_reward', 'wpneo_campaign_updates', 'wpneo_selected_reward');

