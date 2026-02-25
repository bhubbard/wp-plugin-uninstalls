-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_syndicate_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_syndicate-feed-retrieve-term', 'wp_syndicate-feed-url', 'wp_syndicate-registration-method', 'wp_syndicate-default-post-type', 'wp_syndicate-author-id', 'wp_syndicate-default-post-status', 'wp_syndicate-basic-auth-user', 'wp_syndicate-basic-auth-pass');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_syndicate-feed-retrieve-term', 'wp_syndicate-feed-url', 'wp_syndicate-registration-method', 'wp_syndicate-default-post-type', 'wp_syndicate-author-id', 'wp_syndicate-default-post-status', 'wp_syndicate-basic-auth-user', 'wp_syndicate-basic-auth-pass');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_syndicate-feed-retrieve-term', 'wp_syndicate-feed-url', 'wp_syndicate-registration-method', 'wp_syndicate-default-post-type', 'wp_syndicate-author-id', 'wp_syndicate-default-post-status', 'wp_syndicate-basic-auth-user', 'wp_syndicate-basic-auth-pass');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_syndicate-feed-retrieve-term', 'wp_syndicate-feed-url', 'wp_syndicate-registration-method', 'wp_syndicate-default-post-type', 'wp_syndicate-author-id', 'wp_syndicate-default-post-status', 'wp_syndicate-basic-auth-user', 'wp_syndicate-basic-auth-pass');

