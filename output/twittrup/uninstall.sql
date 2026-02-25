-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twittrup_accountnr', 'twittrup-post-created', 'twittrup-post-created-text', 'twittrup-post-publish-showlink', 'twittrup-post-edit', 'twittrup-post-edit-text', 'twittrup-post-edit-showlink', 'twittrup-draft-created', 'twittrup-draft-created-text', 'twittrup-draft-created-showlink', 'twittrup-draft-edit', 'twittrup-draft-edit-text', 'twittrup-draft-edit-showlink', 'twittrup-draft-publish', 'twittrup-draft-publish-text', 'twittrup-draft-publish-showlink', 'twittrup-service', 'twittrUpdated', 'twittrup-twitterlogin', 'twittrup-twitterlogin_encrypted', 'twittrup-twitterlogin_username_1', 'twittrup-twitterlogin_password_1', 'twittrupInitialised');

