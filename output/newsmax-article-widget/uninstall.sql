-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsmax_nm_client_id', 'newsmax_nm_template', 'newsmax_nm_article_selector', 'newsmax_nm_cloudflare_async');

