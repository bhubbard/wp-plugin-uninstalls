-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rezgo_cid', 'rezgo_api_key', 'rezgo_captcha_pub_key', 'rezgo_captcha_priv_key', 'rezgo_google_key', 'rezgo_template', 'rezgo_custom_template_use', 'rezgo_legacy_template_use', 'rezgo_alt_doc_root', 'rezgo_result_num', 'rezgo_forward_secure', 'rezgo_secure_url', 'rezgo_debug', 'rewrite_rules', 'rezgo_optout_overwrite_page_title', 'rezgo_version', 'rezgo_all_secure', 'rezgo_override_doc_root');

