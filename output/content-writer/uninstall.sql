-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conwr_email', 'conwr_api_key', 'conwr_edited_post_id', 'conwr_verified', 'conwr_admin_message', 'conwr_adjust_every', 'conwr_best_feed', 'conwr_hide_body', 'conwr_ignore_users', 'conwr_search_engines', 'conwr_skip_pages', 'conwr_use_js', 'stcon_api_key', 'stcon_email', 'scmtt_adjust_every', 'scmtt_best_feed', 'scmtt_hide_body', 'scmtt_ignore_users', 'scmtt_search_engines', 'scmtt_skip_pages', 'scmtt_use_js');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('steady_content_id', '_conwr_fi_alt', '_conwr_fi_href', '_conwr_fi_target', '_conwr_sc_post_keywords', '_conwr_is_preview', '_yoast_wpseo_focuskw');
DELETE FROM wp_usermeta WHERE meta_key IN ('steady_content_id', '_conwr_fi_alt', '_conwr_fi_href', '_conwr_fi_target', '_conwr_sc_post_keywords', '_conwr_is_preview', '_yoast_wpseo_focuskw');
DELETE FROM wp_termmeta WHERE meta_key IN ('steady_content_id', '_conwr_fi_alt', '_conwr_fi_href', '_conwr_fi_target', '_conwr_sc_post_keywords', '_conwr_is_preview', '_yoast_wpseo_focuskw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('steady_content_id', '_conwr_fi_alt', '_conwr_fi_href', '_conwr_fi_target', '_conwr_sc_post_keywords', '_conwr_is_preview', '_yoast_wpseo_focuskw');

