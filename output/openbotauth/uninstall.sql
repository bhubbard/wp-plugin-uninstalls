-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openbotauth_use_hosted_verifier', 'openbotauth_verifier_url', 'openbotauth_policy', 'openbotauth_payment_url', 'openbotauth_llms_enabled', 'openbotauth_feed_enabled', 'openbotauth_feed_limit', 'openbotauth_feed_post_types', 'openbotauth_prefer_yoast_llms', 'openbotauth_markdown_enabled', 'openbotauth_cleanup_ran');
DELETE FROM wp_options WHERE option_name LIKE '%signed_total';
DELETE FROM wp_options WHERE option_name LIKE '%verified_total';
DELETE FROM wp_options WHERE option_name LIKE '%requests_total';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_openbotauth_policy');
DELETE FROM wp_usermeta WHERE meta_key IN ('_openbotauth_policy');
DELETE FROM wp_termmeta WHERE meta_key IN ('_openbotauth_policy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_openbotauth_policy');

