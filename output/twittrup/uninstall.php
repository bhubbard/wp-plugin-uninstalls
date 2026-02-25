<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twittrup_accountnr');
delete_site_option('twittrup_accountnr');
delete_option('twittrup-post-created');
delete_site_option('twittrup-post-created');
delete_option('twittrup-post-created-text');
delete_site_option('twittrup-post-created-text');
delete_option('twittrup-post-publish-showlink');
delete_site_option('twittrup-post-publish-showlink');
delete_option('twittrup-post-edit');
delete_site_option('twittrup-post-edit');
delete_option('twittrup-post-edit-text');
delete_site_option('twittrup-post-edit-text');
delete_option('twittrup-post-edit-showlink');
delete_site_option('twittrup-post-edit-showlink');
delete_option('twittrup-draft-created');
delete_site_option('twittrup-draft-created');
delete_option('twittrup-draft-created-text');
delete_site_option('twittrup-draft-created-text');
delete_option('twittrup-draft-created-showlink');
delete_site_option('twittrup-draft-created-showlink');
delete_option('twittrup-draft-edit');
delete_site_option('twittrup-draft-edit');
delete_option('twittrup-draft-edit-text');
delete_site_option('twittrup-draft-edit-text');
delete_option('twittrup-draft-edit-showlink');
delete_site_option('twittrup-draft-edit-showlink');
delete_option('twittrup-draft-publish');
delete_site_option('twittrup-draft-publish');
delete_option('twittrup-draft-publish-text');
delete_site_option('twittrup-draft-publish-text');
delete_option('twittrup-draft-publish-showlink');
delete_site_option('twittrup-draft-publish-showlink');
delete_option('twittrup-service');
delete_site_option('twittrup-service');
delete_option('twittrUpdated');
delete_site_option('twittrUpdated');
delete_option('twittrup-twitterlogin');
delete_site_option('twittrup-twitterlogin');
delete_option('twittrup-twitterlogin_encrypted');
delete_site_option('twittrup-twitterlogin_encrypted');
delete_option('twittrup-twitterlogin_username_1');
delete_site_option('twittrup-twitterlogin_username_1');
delete_option('twittrup-twitterlogin_password_1');
delete_site_option('twittrup-twitterlogin_password_1');
delete_option('twittrupInitialised');
delete_site_option('twittrupInitialised');

