-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_fb', 'twitter_via', 'enable_twitter', 'enable_gp', 'enable_pct', 'enable_ln', 'enable_eml', 'sharify_custom_email_msg', 'cstm_post', 'smart_fb_share', 'smart_fb_share_top', 'small_fb_button', 'fb_bacground', 'fb_color', 'fb_hover', 'small_twitter_button', 'twitter_bacground', 'twitter_color', 'twitter_hover', 'small_gp_button', 'gp_bacground', 'gp_color', 'gp_hover', 'small_pct_button', 'pct_bacground', 'pct_color', 'pct_hover', 'small_ln_button', 'ln_bacground', 'ln_color', 'ln_hover', 'small_eml_button', 'eml_bacground', 'eml_color', 'eml_hover', 'smart_fb_share_buttom');

