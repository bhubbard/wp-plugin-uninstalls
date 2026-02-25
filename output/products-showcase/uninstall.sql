-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prodshow_shopify_url', 'prodshow_shopify_access_token', 'prodshow_shopify_client_id', 'prodshow_shopify_client_secret', 'prodshow_cache_duration', 'prodshow_utm_source', 'prodshow_utm_medium', 'prodshow_utm_campaign', 'prodshow_shopify_api_version', 'prodshow_oauth_success', 'prodshow_oauth_error', 'prodshow_api_version_check');

