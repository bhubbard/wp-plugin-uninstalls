-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donatello_enable_fireworks', 'donatello_background_image', 'donatello_page_title', 'donatello_page_text', 'donatello_comment_text', 'donatello_prompt_title', 'donatello_prompt_description', 'donatello_donation_amounts', 'donatello_show_stats', 'donatello_goal', 'donatello_goal_name', 'donatello_raised_amount', 'donatello_donations_count', 'donatello_sandbox_mode', 'donatello_product_id', 'donatello_donators');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_virtual', '_visibility', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_virtual', '_visibility', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_virtual', '_visibility', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_virtual', '_visibility', '_elementor_edit_mode', '_elementor_data');

