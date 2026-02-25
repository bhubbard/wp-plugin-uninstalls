-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mxp_pixnet2wp_db_version', 'mxp_pixnet2wp_user_id', 'mxp_pixnet2wp_re_download_img', 'mxp_pixnet2wp_account', 'mxp_pixnet2wp_pay_user', 'mxp_pixnet2wp_post_tags_status', 'mxp_pixnet2wp_post_tags', 'mxp_pixnet2wp_post_status', 'mxp_pixnet2wp_post_author', 'mxp_pixnet2wp_post_comment_status', 'mxp_pixnet2wp_post_ping_status', 'mxp_pixnet2wp_post_type', 'mxp_pixnet2wp_post_comment_admin_displayname', 'mxp_pixnet2wp_post_comment_admin_email', 'mxp_enable_debug', 'mxp_complete_remove', 'mxp_pixnet2wp_post_category', 'mxp_pixnet2wp_agree_terms', 'mxp_pixnet2wp_auth_token', 'mxp_pixnet2wp_post_quota', 'mxp_pixnet2wp_usage', 'mxp_pixnet2wp_blogname');

